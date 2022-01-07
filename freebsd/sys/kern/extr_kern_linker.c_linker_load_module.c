
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_depend {int dummy; } ;
struct linker_file {int dummy; } ;
typedef struct linker_file* linker_file_t ;


 int EEXIST ;
 int ENOENT ;
 int KASSERT (int ,char*) ;
 int LINKER_UNLOAD_FORCE ;
 int M_LINKER ;
 int SA_XLOCKED ;
 int free (char*,int ) ;
 int kld_sx ;
 char* linker_basename (char*) ;
 int linker_file_add_dependency (struct linker_file*,struct linker_file*) ;
 int linker_file_unload (struct linker_file*,int ) ;
 scalar_t__ linker_find_file_by_name (char const*) ;
 int linker_load_file (char*,struct linker_file**) ;
 char* linker_search_kld (char const*) ;
 char* linker_search_module (char const*,int ,struct mod_depend const*) ;
 int * modlist_lookup2 (char const*,struct mod_depend const*) ;
 int * rootvnode ;
 char* strdup (char const*,int ) ;
 int strlen (char const*) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
linker_load_module(const char *kldname, const char *modname,
    struct linker_file *parent, const struct mod_depend *verinfo,
    struct linker_file **lfpp)
{
 linker_file_t lfdep;
 const char *filename;
 char *pathname;
 int error;

 sx_assert(&kld_sx, SA_XLOCKED);
 if (modname == ((void*)0)) {



  KASSERT(verinfo == ((void*)0), ("linker_load_module: verinfo"
      " is not NULL"));
  pathname = linker_search_kld(kldname);
 } else {
  if (modlist_lookup2(modname, verinfo) != ((void*)0))
   return (EEXIST);
  if (kldname != ((void*)0))
   pathname = strdup(kldname, M_LINKER);
  else if (rootvnode == ((void*)0))
   pathname = ((void*)0);
  else



   pathname = linker_search_module(modname,
       strlen(modname), verinfo);
 }
 if (pathname == ((void*)0))
  return (ENOENT);







 filename = linker_basename(pathname);
 if (linker_find_file_by_name(filename))
  error = EEXIST;
 else do {
  error = linker_load_file(pathname, &lfdep);
  if (error)
   break;
  if (modname && verinfo &&
      modlist_lookup2(modname, verinfo) == ((void*)0)) {
   linker_file_unload(lfdep, LINKER_UNLOAD_FORCE);
   error = ENOENT;
   break;
  }
  if (parent) {
   error = linker_file_add_dependency(parent, lfdep);
   if (error)
    break;
  }
  if (lfpp)
   *lfpp = lfdep;
 } while (0);
 free(pathname, M_LINKER);
 return (error);
}
