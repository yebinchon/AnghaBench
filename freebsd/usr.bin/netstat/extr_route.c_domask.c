
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static void
domask(char *dst, size_t buflen, u_long mask)
{
 int b, i;

 if (mask == 0) {
  *dst = '\0';
  return;
 }
 i = 0;
 for (b = 0; b < 32; b++)
  if (mask & (1 << b)) {
   int bb;

   i = b;
   for (bb = b+1; bb < 32; bb++)
    if (!(mask & (1 << bb))) {
     i = -1;
     break;
    }
   break;
  }
 if (i == -1)
  snprintf(dst, buflen, "&0x%lx", mask);
 else
  snprintf(dst, buflen, "/%d", 32-i);
}
