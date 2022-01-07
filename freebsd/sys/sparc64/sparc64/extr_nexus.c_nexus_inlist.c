
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const* const) ;

__attribute__((used)) static int
nexus_inlist(const char *name, const char *const *list)
{
 int i;

 if (name == ((void*)0))
  return (0);
 for (i = 0; list[i] != ((void*)0); i++)
  if (strcmp(name, list[i]) == 0)
   return (1);
 return (0);
}
