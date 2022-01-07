
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
skip_comment(char *cp)
{
 int nesting = 1;

 for (; nesting > 0 && *cp; cp++) {
  switch (*cp) {
  case '\\':
   if (cp[1])
    cp++;
   break;
  case '(':
   nesting++;
   break;
  case ')':
   nesting--;
   break;
  }
 }
 return (cp);
}
