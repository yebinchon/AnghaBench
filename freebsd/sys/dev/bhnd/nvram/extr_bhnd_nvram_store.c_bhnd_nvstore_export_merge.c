
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct bhnd_nvram_store {int data_caps; int data; } ;
struct TYPE_4__ {int * pending; } ;
typedef TYPE_1__ bhnd_nvstore_path ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_prop ;
typedef int bhnd_nvram_plist ;


 int BHND_NVRAM_DATA_CAP_DEVPATHS ;
 scalar_t__ BHND_NVSTORE_GET_FLAG (int ,int ) ;
 int EXPORT_COMMITTED ;
 int EXPORT_DELETED ;
 int EXPORT_UNCOMMITTED ;
 int bhnd_nvram_data_copy_val (int ,void*,int **) ;
 char* bhnd_nvram_data_getvar_name (int ,void*) ;
 int bhnd_nvram_plist_append (int *,int *) ;
 int bhnd_nvram_plist_append_val (int *,char const*,int *) ;
 scalar_t__ bhnd_nvram_plist_contains (int *,char const*) ;
 int * bhnd_nvram_plist_next (int *,int *) ;
 scalar_t__ bhnd_nvram_prop_is_null (int *) ;
 char* bhnd_nvram_trim_path_name (char const*) ;
 int bhnd_nvram_val_release (int *) ;
 void* bhnd_nvstore_path_data_next (struct bhnd_nvram_store*,TYPE_1__*,void**) ;

__attribute__((used)) static int
bhnd_nvstore_export_merge(struct bhnd_nvram_store *sc,
    bhnd_nvstore_path *path, bhnd_nvram_plist *merged, uint32_t flags)
{
 void *cookiep, *idxp;
 int error;


 if (BHND_NVSTORE_GET_FLAG(flags, EXPORT_UNCOMMITTED)) {
  bhnd_nvram_prop *prop;

  prop = ((void*)0);
  while ((prop = bhnd_nvram_plist_next(path->pending, prop))) {

   if (!BHND_NVSTORE_GET_FLAG(flags, EXPORT_DELETED)) {
    if (bhnd_nvram_prop_is_null(prop))
     continue;
   }


   error = bhnd_nvram_plist_append(merged, prop);
   if (error)
    return (error);
  }
 }


 if (!BHND_NVSTORE_GET_FLAG(flags, EXPORT_COMMITTED))
  return (0);


 idxp = ((void*)0);
 while ((cookiep = bhnd_nvstore_path_data_next(sc, path, &idxp))) {
  const char *name;
  bhnd_nvram_val *val;


  name = bhnd_nvram_data_getvar_name(sc->data, cookiep);


  if (sc->data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS)
   name = bhnd_nvram_trim_path_name(name);


  if (BHND_NVSTORE_GET_FLAG(flags, EXPORT_UNCOMMITTED)) {
   if (bhnd_nvram_plist_contains(path->pending, name))
    continue;
  }





  if (bhnd_nvram_plist_contains(merged, name))
   continue;


  if ((error = bhnd_nvram_data_copy_val(sc->data, cookiep, &val)))
   return (error);


  error = bhnd_nvram_plist_append_val(merged, name, val);
  bhnd_nvram_val_release(val);
  if (error)
   return (error);
 }

 return (0);
}
