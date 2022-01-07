
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_LINKER ;
 char* linker_lookup_file (char*,int,char const*,int,int *) ;
 char* linker_path ;
 scalar_t__ strchr (char const*,char) ;
 char* strdup (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
linker_search_kld(const char *name)
{
 char *cp, *ep, *result;
 int len;


 if (strchr(name, '/'))
  return (strdup(name, M_LINKER));


 len = strlen(name);
 for (ep = linker_path; *ep; ep++) {
  cp = ep;

  for (; *ep != 0 && *ep != ';'; ep++);
  result = linker_lookup_file(cp, ep - cp, name, len, ((void*)0));
  if (result != ((void*)0))
   return (result);
 }
 return (((void*)0));
}
