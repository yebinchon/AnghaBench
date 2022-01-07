
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
copyin(char *src, char **space)
{
 char *cp, *top;

 top = cp = *space;
 while ((*cp++ = *src++) != '\0')
  ;
 *space = cp;
 return (top);
}
