
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_depend {int dummy; } ;


 char* linker_hints_lookup (char*,int,char const*,int,struct mod_depend const*) ;
 char* linker_path ;

__attribute__((used)) static char *
linker_search_module(const char *modname, int modnamelen,
    const struct mod_depend *verinfo)
{
 char *cp, *ep, *result;




 for (cp = linker_path; *cp; cp = ep + 1) {

  for (ep = cp; (*ep != 0) && (*ep != ';'); ep++);
  result = linker_hints_lookup(cp, ep - cp, modname,
      modnamelen, verinfo);
  if (result != ((void*)0))
   return (result);
  if (*ep == 0)
   break;
 }
 return (((void*)0));
}
