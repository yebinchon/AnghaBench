
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bhnd_nvram_store {int data_caps; } ;
typedef int bhnd_nvstore_path ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ bhnd_nvstore_name_info ;
typedef int bhnd_nvram_val ;


 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int BHND_NVSTORE_NAME_EXTERNAL ;
 int MA_OWNED ;
 int bhnd_nvstore_parse_name_info (char const*,int ,int ,TYPE_1__*) ;
 int bhnd_nvstore_path_register_update (struct bhnd_nvram_store*,int *,int ,int *) ;
 int * bhnd_nvstore_var_get_path (struct bhnd_nvram_store*,TYPE_1__*) ;

__attribute__((used)) static int
bhnd_nvram_store_setval_common(struct bhnd_nvram_store *sc, const char *name,
    bhnd_nvram_val *value)
{
 bhnd_nvstore_path *path;
 bhnd_nvstore_name_info info;
 int error;

 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);


 error = bhnd_nvstore_parse_name_info(name, BHND_NVSTORE_NAME_EXTERNAL,
     sc->data_caps, &info);
 if (error)
  return (error);


 if ((path = bhnd_nvstore_var_get_path(sc, &info)) == ((void*)0))
  return (error);


 return (bhnd_nvstore_path_register_update(sc, path, info.name, value));
}
