
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int FILE ;


 int cnvlist_free_string (void*) ;
 char* cnvlist_get_string (void*) ;
 int fprintf (int *,char*,char const*,char*) ;
 int nvlist_empty (int *) ;
 char* nvlist_next (int *,int *,void**) ;

__attribute__((used)) static void
dump_nvlist(nvlist_t *nvl, FILE *ofp)
{
 const char *name;
 void *cookie;

 if (nvl == ((void*)0))
  return;

 while (!nvlist_empty(nvl)) {
  cookie = ((void*)0);
  name = nvlist_next(nvl, ((void*)0), &cookie);
  fprintf(ofp, "\"%s=%s\\0\"\n", name,
       cnvlist_get_string(cookie));

  cnvlist_free_string(cookie);
 }
}
