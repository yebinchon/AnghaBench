
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long strtoul (char const*,char**,int ) ;

int
getnum(const char *s, int *res)
{
 unsigned long ul;
 char *cp;

 ul = strtoul(s, &cp, 0);
 if (*cp != '\0')
   return (-1);

 *res = (int)ul;
 return (0);
}
