function Y=evaluation(P)
[x1 y1]=size(P);
H=zeros(1,x1);
for i = 1:x1
    A=bi2de(P(i,1:y1/2));
    x=-3+A*(3-(-3))/(2^(y1/2)-1);
    B=bi2de(P(i,y1/2+1:y1));
    y=-3+B*(3-(-3))/(2^(y1/2)-1);
   
    H(1,i)= x+y-2*x^2-y^2+x*y;
end
Y=10^6-H