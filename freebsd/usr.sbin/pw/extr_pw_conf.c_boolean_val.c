
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* boolfalse ;
 scalar_t__* booltrue ;
 scalar_t__ strcmp (char const*,scalar_t__) ;
 char* unquote (char const*) ;

int
boolean_val(char const * str, int dflt)
{
 if ((str = unquote(str)) != ((void*)0)) {
  int i;

  for (i = 0; booltrue[i]; i++)
   if (strcmp(str, booltrue[i]) == 0)
    return 1;
  for (i = 0; boolfalse[i]; i++)
   if (strcmp(str, boolfalse[i]) == 0)
    return 0;
 }
 return dflt;
}
