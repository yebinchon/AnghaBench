
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;



__attribute__((used)) static int
nfsrv_getipnumber(u_char *cp)
{
 int i = 0, j = 0;

 while (*cp) {
  if (j > 2 || *cp < '0' || *cp > '9')
   return (-1);
  i *= 10;
  i += (*cp - '0');
  cp++;
  j++;
 }
 if (i < 256)
  return (i);
 return (-1);
}
