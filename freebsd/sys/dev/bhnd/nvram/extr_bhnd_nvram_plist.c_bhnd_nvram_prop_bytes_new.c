
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;
typedef int bhnd_nvram_prop ;


 int BHND_NVRAM_VAL_DYNAMIC ;
 int BHND_NV_LOG (char*,int) ;
 int ENOMEM ;
 int * bhnd_nvram_prop_new (char const*,int *) ;
 int bhnd_nvram_val_new (int **,int *,void const*,size_t,int ,int ) ;
 int bhnd_nvram_val_release (int *) ;

bhnd_nvram_prop *
bhnd_nvram_prop_bytes_new(const char *name, const void *inp, size_t ilen,
    bhnd_nvram_type itype)
{
 bhnd_nvram_prop *prop;
 bhnd_nvram_val *val;
 int error;


 error = bhnd_nvram_val_new(&val, ((void*)0), inp, ilen, itype,
     BHND_NVRAM_VAL_DYNAMIC);
 if (error) {
  if (error != ENOMEM) {
   BHND_NV_LOG("invalid input data; initialization "
       "failed: %d\n", error);
  }

  return (((void*)0));
 }


 prop = bhnd_nvram_prop_new(name, val);


 bhnd_nvram_val_release(val);
 return (prop);
}
