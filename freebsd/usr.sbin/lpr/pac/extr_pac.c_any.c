
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
any(int ch, const char str[])
{
 register int c = ch;
 register const char *cp = str;

 while (*cp)
  if (*cp++ == c)
   return(1);
 return(0);
}
