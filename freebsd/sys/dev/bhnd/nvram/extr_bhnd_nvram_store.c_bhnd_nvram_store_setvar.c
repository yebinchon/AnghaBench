
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_store {int dummy; } ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_VAL_BORROW_DATA ;
 int BHND_NVRAM_VAL_FIXED ;
 int BHND_NVSTORE_LOCK (struct bhnd_nvram_store*) ;
 int BHND_NVSTORE_UNLOCK (struct bhnd_nvram_store*) ;
 int BHND_NV_LOG (char*,int) ;
 int EINVAL ;
 int bhnd_nvram_store_setval_common (struct bhnd_nvram_store*,char const*,int *) ;
 int bhnd_nvram_val_init (int *,int *,void const*,size_t,int ,int) ;
 int bhnd_nvram_val_release (int *) ;

int
bhnd_nvram_store_setvar(struct bhnd_nvram_store *sc, const char *name,
    const void *inp, size_t ilen, bhnd_nvram_type itype)
{
 bhnd_nvram_val val;
 int error;

 error = bhnd_nvram_val_init(&val, ((void*)0), inp, ilen, itype,
     BHND_NVRAM_VAL_FIXED|BHND_NVRAM_VAL_BORROW_DATA);
 if (error) {
  BHND_NV_LOG("error initializing value: %d\n", error);
  return (EINVAL);
 }

 BHND_NVSTORE_LOCK(sc);
 error = bhnd_nvram_store_setval_common(sc, name, &val);
 BHND_NVSTORE_UNLOCK(sc);

 bhnd_nvram_val_release(&val);

 return (error);
}
