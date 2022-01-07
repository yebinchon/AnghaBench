
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bhnd_nvram_store {int data; int data_caps; } ;
typedef int bhnd_nvstore_path ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ bhnd_nvstore_name_info ;
typedef int bhnd_nvram_type ;
typedef int bhnd_nvram_prop ;


 int BHND_NVSTORE_LOCK (struct bhnd_nvram_store*) ;
 int BHND_NVSTORE_NAME_EXTERNAL ;
 int BHND_NVSTORE_UNLOCK (struct bhnd_nvram_store*) ;
 int ENOENT ;
 int bhnd_nvram_data_getvar (int ,void*,void*,size_t*,int ) ;
 int bhnd_nvram_prop_encode (int *,void*,size_t*,int ) ;
 scalar_t__ bhnd_nvram_prop_is_null (int *) ;
 int bhnd_nvstore_parse_name_info (char const*,int ,int ,TYPE_1__*) ;
 void* bhnd_nvstore_path_data_lookup (struct bhnd_nvram_store*,int *,int ) ;
 int * bhnd_nvstore_path_get_update (struct bhnd_nvram_store*,int *,int ) ;
 int * bhnd_nvstore_var_get_path (struct bhnd_nvram_store*,TYPE_1__*) ;

int
bhnd_nvram_store_getvar(struct bhnd_nvram_store *sc, const char *name,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
 bhnd_nvstore_name_info info;
 bhnd_nvstore_path *path;
 bhnd_nvram_prop *prop;
 void *cookiep;
 int error;

 BHND_NVSTORE_LOCK(sc);


 error = bhnd_nvstore_parse_name_info(name, BHND_NVSTORE_NAME_EXTERNAL,
     sc->data_caps, &info);
 if (error)
  goto finished;


 if ((path = bhnd_nvstore_var_get_path(sc, &info)) == ((void*)0)) {
  error = ENOENT;
  goto finished;
 }


 prop = bhnd_nvstore_path_get_update(sc, path, info.name);
 if (prop != ((void*)0)) {
  if (bhnd_nvram_prop_is_null(prop)) {

   error = ENOENT;
  } else {
   error = bhnd_nvram_prop_encode(prop, outp, olen, otype);
  }
  goto finished;
 }


 cookiep = bhnd_nvstore_path_data_lookup(sc, path, info.name);
 if (cookiep != ((void*)0)) {

  error = bhnd_nvram_data_getvar(sc->data, cookiep, outp, olen,
       otype);
  goto finished;
 }


 error = ENOENT;

finished:
 BHND_NVSTORE_UNLOCK(sc);
 return (error);
}
