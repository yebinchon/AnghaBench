
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
width(register char *s, register char *os)
{
 register int i = 0;

 while (s < os) {
  if (*s == '\t') {
   i = (i + 8) &~ 7;
   s++;
   continue;
  }
  if (*s < ' ')
   i += 2;
  else
   i++;
  s++;
 }
 return (i);
}
