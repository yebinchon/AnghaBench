
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* NULLUNIT ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
compareproducts(char **one, char **two)
{
 while (*one || *two) {
  if (!*one && *two != NULLUNIT)
   return 1;
  if (!*two && *one != NULLUNIT)
   return 1;
  if (*one == NULLUNIT)
   one++;
  else if (*two == NULLUNIT)
   two++;
  else if (strcmp(*one, *two))
   return 1;
  else {
   one++;
   two++;
  }
 }
 return 0;
}
