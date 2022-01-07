
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bhnd_nvram_store {int data; TYPE_1__* root_path; } ;
struct TYPE_6__ {int pending; int path_str; } ;
typedef TYPE_1__ bhnd_nvstore_path ;
struct TYPE_7__ {int alias; } ;
typedef TYPE_2__ bhnd_nvstore_alias ;
typedef int bhnd_nvram_val ;


 scalar_t__ BHND_NVRAM_TYPE_NULL ;
 int BHND_NV_LOG (char*,char const*,int) ;
 int ENOMEM ;
 int bhnd_nv_asprintf (char**,char*,int ,char const*) ;
 int bhnd_nv_free (char*) ;
 int bhnd_nvram_data_filter_setvar (int ,char const*,int *,int **) ;
 int bhnd_nvram_data_filter_unsetvar (int ,char const*) ;
 char* bhnd_nvram_data_getvar_name (int ,void*) ;
 int bhnd_nvram_plist_remove (int ,char const*) ;
 int bhnd_nvram_plist_replace_val (int ,char const*,int *) ;
 int * bhnd_nvram_val_copy (int *) ;
 int bhnd_nvram_val_release (int *) ;
 scalar_t__ bhnd_nvram_val_type (int *) ;
 TYPE_2__* bhnd_nvstore_find_alias (struct bhnd_nvram_store*,int ) ;
 void* bhnd_nvstore_path_data_lookup (struct bhnd_nvram_store*,TYPE_1__*,char const*) ;

int
bhnd_nvstore_path_register_update(struct bhnd_nvram_store *sc,
    bhnd_nvstore_path *path, const char *name, bhnd_nvram_val *value)
{
 bhnd_nvram_val *prop_val;
 const char *full_name;
 void *cookiep;
 char *namebuf;
 int error;
 bool nvram_committed;

 namebuf = ((void*)0);
 prop_val = ((void*)0);



 nvram_committed = 0;
 cookiep = bhnd_nvstore_path_data_lookup(sc, path, name);
 if (cookiep != ((void*)0)) {

  nvram_committed = 1;


  full_name = bhnd_nvram_data_getvar_name(sc->data, cookiep);
 } else if (path == sc->root_path) {

  full_name = name;
 } else {
  bhnd_nvstore_alias *alias;
  int len;



  alias = bhnd_nvstore_find_alias(sc, path->path_str);
  if (alias != ((void*)0)) {

   len = bhnd_nv_asprintf(&namebuf, "%lu:%s", alias->alias,
       name);
  } else {

   len = bhnd_nv_asprintf(&namebuf, "%s/%s",
       path->path_str, name);
  }

  if (len < 0)
   return (ENOMEM);

  full_name = namebuf;
 }


 if (bhnd_nvram_val_type(value) == BHND_NVRAM_TYPE_NULL) {
  error = bhnd_nvram_data_filter_unsetvar(sc->data, full_name);
  if (error) {
   BHND_NV_LOG("cannot unset property %s: %d\n", full_name,
       error);
   goto cleanup;
  }

  if ((prop_val = bhnd_nvram_val_copy(value)) == ((void*)0)) {
   error = ENOMEM;
   goto cleanup;
  }
 } else {
  error = bhnd_nvram_data_filter_setvar(sc->data, full_name,
      value, &prop_val);
  if (error) {
   BHND_NV_LOG("cannot set property %s: %d\n", full_name,
       error);
   goto cleanup;
  }
 }


 if (bhnd_nvram_val_type(value) == BHND_NVRAM_TYPE_NULL &&
     !nvram_committed)
 {



  bhnd_nvram_plist_remove(path->pending, name);
 } else {

  error = bhnd_nvram_plist_replace_val(path->pending, name,
      prop_val);
  if (error)
   goto cleanup;
 }


 error = 0;

cleanup:
 if (namebuf != ((void*)0))
  bhnd_nv_free(namebuf);

 if (prop_val != ((void*)0))
  bhnd_nvram_val_release(prop_val);

 return (error);
}
