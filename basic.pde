int [][]a=new int[19][19];
int flag=-1;
void setup(){
   size(500,500);
   smooth(); 
   frameRate(10);
   background(102);
   stroke(0);
for(int i=0;i<475;i+=25){
    int tmp=i+20;
    line(20,tmp,470,tmp);
    line(tmp,20,tmp,470);
}
}
     
void draw(){
  int tmpx,tmpy;
  if(mousePressed){
     tmpx=ceil((mouseX-20)/25);
     tmpy=ceil((mouseY-20)/25);
     if(tmpx>=0&&tmpx<=18&&tmpy>=0&&tmpy<=18&&a[tmpx][tmpy]!=1){
       flag*=(-1);
       if(flag==-1){
         fill(255);}else if(flag==1){fill(0);}
       ellipse(20+25*tmpx,20+25*tmpy,24,24);
       a[tmpx][tmpy]=1;
     }}}
