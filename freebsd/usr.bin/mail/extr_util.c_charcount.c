
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
charcount(char *str, int c)
{
 char *cp;
 int i;

 for (i = 0, cp = str; *cp != '\0'; cp++)
  if (*cp == c)
   i++;
 return (i);
}
