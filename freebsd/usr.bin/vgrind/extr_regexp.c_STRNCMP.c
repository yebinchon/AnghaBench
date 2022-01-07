
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ l_onecase ;
 char makelower (char) ;

int
STRNCMP(register char *s1, register char *s2, register int len)
{
 if (l_onecase) {
     do
  if (*s2 - makelower(*s1))
   return (*s2 - makelower(*s1));
  else {
   s2++;
   s1++;
  }
     while (--len);
 } else {
     do
  if (*s2 - *s1)
   return (*s2 - *s1);
  else {
   s2++;
   s1++;
  }
     while (--len);
 }
 return(0);
}
