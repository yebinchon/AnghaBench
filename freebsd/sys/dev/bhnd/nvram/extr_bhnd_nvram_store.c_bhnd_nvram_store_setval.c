
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_store {int dummy; } ;
typedef int bhnd_nvram_val ;


 int BHND_NVSTORE_LOCK (struct bhnd_nvram_store*) ;
 int BHND_NVSTORE_UNLOCK (struct bhnd_nvram_store*) ;
 int bhnd_nvram_store_setval_common (struct bhnd_nvram_store*,char const*,int *) ;

int
bhnd_nvram_store_setval(struct bhnd_nvram_store *sc, const char *name,
    bhnd_nvram_val *value)
{
 int error;

 BHND_NVSTORE_LOCK(sc);
 error = bhnd_nvram_store_setval_common(sc, name, value);
 BHND_NVSTORE_UNLOCK(sc);

 return (error);
}
