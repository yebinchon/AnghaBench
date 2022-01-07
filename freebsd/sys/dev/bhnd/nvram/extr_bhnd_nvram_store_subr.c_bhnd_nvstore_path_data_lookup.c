
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bhnd_nvram_store {int data; } ;
struct TYPE_4__ {int * index; int path_str; } ;
typedef TYPE_1__ bhnd_nvstore_path ;


 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int BHND_NV_ASSERT (int ,char*) ;
 int MA_OWNED ;
 void* bhnd_nvram_data_find (int ,char const*) ;
 void* bhnd_nvstore_index_lookup (struct bhnd_nvram_store*,int *,char const*) ;
 int bhnd_nvstore_is_root_path (struct bhnd_nvram_store*,TYPE_1__*) ;

void *
bhnd_nvstore_path_data_lookup(struct bhnd_nvram_store *sc,
    bhnd_nvstore_path *path, const char *name)
{
 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);


 if (path->index == ((void*)0)) {


  BHND_NV_ASSERT(bhnd_nvstore_is_root_path(sc, path),
      ("missing index for non-root path %s", path->path_str));


  return (bhnd_nvram_data_find(sc->data, name));
 }


 return (bhnd_nvstore_index_lookup(sc, path->index, name));
}
