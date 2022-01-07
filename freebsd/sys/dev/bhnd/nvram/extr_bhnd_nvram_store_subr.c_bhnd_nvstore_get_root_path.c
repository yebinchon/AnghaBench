
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_store {int * root_path; } ;
typedef int bhnd_nvstore_path ;


 int BHND_NVSTORE_LOCK_ASSERT (struct bhnd_nvram_store*,int ) ;
 int MA_OWNED ;

bhnd_nvstore_path *
bhnd_nvstore_get_root_path(struct bhnd_nvram_store *sc)
{
 BHND_NVSTORE_LOCK_ASSERT(sc, MA_OWNED);
 return (sc->root_path);
}
