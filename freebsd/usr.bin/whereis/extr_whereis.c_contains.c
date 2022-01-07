
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ccharp ;


 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static int
contains(ccharp *cpp, const char *s)
{
 ccharp cp;

 if (cpp == ((void*)0))
  return (0);

 while ((cp = *cpp) != ((void*)0)) {
  if (strcmp(cp, s) == 0)
   return (1);
  cpp++;
 }
 return (0);
}
