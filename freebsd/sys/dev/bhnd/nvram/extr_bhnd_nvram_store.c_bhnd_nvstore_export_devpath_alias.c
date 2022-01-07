
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct bhnd_nvram_store {int dummy; } ;
struct TYPE_5__ {int path_str; } ;
typedef TYPE_1__ bhnd_nvstore_path ;
struct TYPE_6__ {int alias; } ;
typedef TYPE_2__ bhnd_nvstore_alias ;
typedef int bhnd_nvram_plist ;


 int BHND_NV_ASSERT (int,char*) ;
 int EEXIST ;
 int ENOMEM ;
 int ULONG_MAX ;
 int bhnd_nv_asprintf (char**,char*,int ) ;
 int bhnd_nv_free (char*) ;
 int bhnd_nvram_plist_append_string (int *,char*,char const*) ;
 int bhnd_nvram_plist_contains (int *,char*) ;
 TYPE_2__* bhnd_nvstore_find_alias (struct bhnd_nvram_store*,int ) ;
 int * bhnd_nvstore_get_alias (struct bhnd_nvram_store*,int ) ;

__attribute__((used)) static int
bhnd_nvstore_export_devpath_alias(struct bhnd_nvram_store *sc,
    bhnd_nvstore_path *path, const char *devpath, bhnd_nvram_plist *plist,
    u_long *alias_val)
{
 bhnd_nvstore_alias *alias;
 char *pathvar;
 int error;

 *alias_val = 0;


 alias = bhnd_nvstore_find_alias(sc, path->path_str);
 if (alias != ((void*)0)) {
  *alias_val = alias->alias;


  bhnd_nv_asprintf(&pathvar, "devpath%lu", *alias_val);
  if (pathvar == ((void*)0))
   return (ENOMEM);


  error = bhnd_nvram_plist_append_string(plist, pathvar, devpath);

  BHND_NV_ASSERT(error != EEXIST, ("reserved alias %lu:%s in use",
     * alias_val, path->path_str));

  bhnd_nv_free(pathvar);
  return (error);
 }


 while (1) {

  while (bhnd_nvstore_get_alias(sc, *alias_val) != ((void*)0)) {
   if (*alias_val == ULONG_MAX)
    return (ENOMEM);

   (*alias_val)++;
  }


  bhnd_nv_asprintf(&pathvar, "devpath%lu", *alias_val);
  if (pathvar == ((void*)0))
   return (ENOMEM);


  if (!bhnd_nvram_plist_contains(plist, pathvar))
   break;


  bhnd_nv_free(pathvar);

  if (*alias_val == ULONG_MAX)
   return (ENOMEM);

  (*alias_val)++;
 }


 error = bhnd_nvram_plist_append_string(plist, pathvar, devpath);

 bhnd_nv_free(pathvar);
 return (error);
}
