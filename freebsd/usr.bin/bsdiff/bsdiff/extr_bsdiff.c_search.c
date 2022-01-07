
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef size_t off_t ;


 int MIN (size_t,size_t) ;
 size_t matchlen (int *,size_t,int *,size_t) ;
 scalar_t__ memcmp (int *,int *,int ) ;

__attribute__((used)) static off_t search(off_t *I,u_char *old,off_t oldsize,
  u_char *new,off_t newsize,off_t st,off_t en,off_t *pos)
{
 off_t x,y;

 if(en-st<2) {
  x=matchlen(old+I[st],oldsize-I[st],new,newsize);
  y=matchlen(old+I[en],oldsize-I[en],new,newsize);

  if(x>y) {
   *pos=I[st];
   return x;
  } else {
   *pos=I[en];
   return y;
  }
 }

 x=st+(en-st)/2;
 if(memcmp(old+I[x],new,MIN(oldsize-I[x],newsize))<0) {
  return search(I,old,oldsize,new,newsize,x,en,pos);
 } else {
  return search(I,old,oldsize,new,newsize,st,x,pos);
 };
}
