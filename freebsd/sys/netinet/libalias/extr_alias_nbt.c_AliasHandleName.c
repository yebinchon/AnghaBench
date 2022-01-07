
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int fflush (int ) ;
 scalar_t__ isprint (int) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static u_char *
AliasHandleName(u_char * p, char *pmax)
{

 u_char *s;
 u_char c;
 int compress;



 if (p == ((void*)0) || (char *)p >= pmax)
  return (((void*)0));

 if (*p & 0xc0) {
  p = p + 2;
  if ((char *)p > pmax)
   return (((void*)0));
  return ((u_char *) p);
 }
 while ((*p & 0x3f) != 0x00) {
  s = p + 1;
  if (*p == 0x20)
   compress = 1;
  else
   compress = 0;


  p = (u_char *) (p + (*p & 0x3f) + 1);
  if ((char *)p > pmax) {
   p = ((void*)0);
   break;
  }



  while (s < p) {
   if (compress == 1) {
    c = (u_char) (((((*s & 0x0f) << 4) | (*(s + 1) & 0x0f)) - 0x11));






    s += 2;
   } else {



    s++;
   }
  }




 }


 if (p == ((void*)0) || (char *)p >= pmax)
  p = ((void*)0);
 else
  p++;
 return ((u_char *) p);
}
