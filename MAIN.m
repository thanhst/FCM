%[X1]=MAIN('Breat.txt')

function [X1]=MAIN(Database)

clc;
Databasegoc = load(Database);
[a,b]=size(Databasegoc);
j=1;
t=1;
for i=1:a
    if Databasegoc(i,1)==2
        label2(j,:)=Databasegoc(i,:);
        j=j+1;
    else  
        label4(t,:)=Databasegoc(i,:);
        t=t+1;
    end
end
[a1,b1]=size(label2);
[a2,b2]=size(label4);
t1=1;t2=1;t3=1;t4=1;t5=1;t6=1;t7=1;t8=1;t9=1;
for i=1:a1
    if i< round(a1/10)+1
       fold21(i,:)=label2(i,:);
    else
        if i< round(2*a1/10)+1
            fold22(t1,:)=label2(i,:);
            t1=t1+1;
        else
            if i< round(3*a1/10)+1
                fold23(t2,:)=label2(i,:);
                t2=t2+1;
            else
                if i< round(4*a1/10)+1
                    fold24(t3,:)=label2(i,:);
                    t3=t3+1;
                else
                    if i< round(5*a1/10)+1
                        fold25(t4,:)=label2(i,:);
                        t4=t4+1;
                    else
                        if i< round(6*a1/10)+1
                            fold26(t5,:)=label2(i,:);
                            t5=t5+1;
                        else
                            if i< round(7*a1/10)+1
                                fold27(t6,:)=label2(i,:);
                                t6=t6+1;
                            else
                                if i< round(8*a1/10)+1
                                    fold28(t7,:)=label2(i,:);
                                    t7=t7+1;
                                else
                                    if i< round(9*a1/10)+1
                                        fold29(t8,:)=label2(i,:);
                                        t8=t8+1;
                                    else
                                        fold210(t9,:)=label2(i,:);
                                        t9=t9+1;
                                    end
                                end
                            end
                        end            
                    end 
                end
            end
        end
    end
end
t1=1;t2=1;t3=1;t4=1;t5=1;t6=1;t7=1;t8=1;t9=1;
for i=1:a2
    if i< round(a2/10)+1
       fold41(i,:)=label4(i,:);  
    else
        if i< round(2*a2/10)+1
           fold42(t1,:)=label4(i,:);
           t1=t1+1;
        else
            if i< round(3*a2/10)+1
               fold43(t2,:)=label4(i,:);
               t2=t2+1;
            else
                if i< round(4*a2/10)+1
                   fold44(t3,:)=label4(i,:);
                   t3=t3+1;
                else
                    if i< round(5*a2/10)+1
                       fold45(t4,:)=label4(i,:);
                       t4=t4+1;
                    else
                        if i< round(6*a2/10)+1
                           fold46(t5,:)=label4(i,:);
                      
                           t5=t5+1;
                        else
                            if i< round(7*a2/10)+1
                               fold47(t6,:)=label4(i,:);
                          
                               t6=t6+1;
                            else
                                if i< round(8*a2/10)+1
                                    fold48(t7,:)=label4(i,:);
                                  
                                    t7=t7+1;
                                else
                                    if i< round(9*a2/10)+1
                                        fold49(t8,:)=label4(i,:);
                                        
                                        t8=t8+1;
                                    else
                                        fold410(t9,:)=label4(i,:);
                                       
                                        t9=t9+1;
                                    end
                                end
                            end
                        end            
                    end 
                end
            end
        end
    end
end
Train=[fold21;fold41];

[c1,d1]=size(fold21);
for i=1:3
    RTrain2(i,:)=fold21(i,:); 
end
for i=4:5
    RVal2(i,:)=fold21(i,:); 
end
[c2,d2]=size(fold41);
for i=1:2
    RTrain4(i,:)=fold41(i,:); 
end
for i=3:3
    RVal4(i,:)=fold41(i,:); 
end
RTrain=[RTrain2;RTrain4];
size(RTrain)
RVal=[RVal2;RVal4];
for i=6:c1
    RTest2=fold21(i,:);
end
for i=4:c2
    RTest4=fold41(i,:);
end
RTest=[RTest2;RTest4];
[ruleList1] = Rule2(RTrain)

X1=1;
% [AccuracyRVal] = TestGraph2(RVal,A,B,X1,cluster,center_vector)
% [AccuracyRTest] = TestGraph2(RTest,A,B,X1,cluster,center_vector);





% 
% output_file = strrep('Database_Breast_output','.txt','_output');
% addpath('..\output')
% save(['..\output\' output_file], 'Time');
% save(['..\output\' output_file], 'Accuracy', '-append');
% save(['..\output\' output_file], 'Recall', '-append');
% save(['..\output\' output_file], 'Precision', '-append');


