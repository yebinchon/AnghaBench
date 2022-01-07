
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bhnd_nvram_store {int dummy; } ;
struct TYPE_3__ {int pending; } ;
typedef TYPE_1__ bhnd_nvstore_path ;
typedef int bhnd_nvram_prop ;


 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int MA_OWNED ;
 int * bhnd_nvram_plist_get_prop (int ,char const*) ;

bhnd_nvram_prop *
bhnd_nvstore_path_get_update(struct bhnd_nvram_store *sc,
    bhnd_nvstore_path *path, const char *name)
{
 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);
 return (bhnd_nvram_plist_get_prop(path->pending, name));
}
