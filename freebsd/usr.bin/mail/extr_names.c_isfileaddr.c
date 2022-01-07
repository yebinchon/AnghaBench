
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
isfileaddr(char *name)
{
 char *cp;

 if (*name == '+')
  return (1);
 for (cp = name; *cp != '\0'; cp++) {
  if (*cp == '!' || *cp == '%' || *cp == '@')
   return (0);
  if (*cp == '/')
   return (1);
 }
 return (0);
}
