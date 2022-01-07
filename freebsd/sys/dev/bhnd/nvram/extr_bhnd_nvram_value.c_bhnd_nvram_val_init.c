
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bhnd_nvram_val_fmt ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_VAL_STORAGE_AUTO ;
 int bhnd_nvram_val_init_common (int *,int ,int const*,void const*,size_t,int ,int ) ;
 int bhnd_nvram_val_release (int *) ;

int
bhnd_nvram_val_init(bhnd_nvram_val *value, const bhnd_nvram_val_fmt *fmt,
    const void *inp, size_t ilen, bhnd_nvram_type itype, uint32_t flags)
{
 int error;

 error = bhnd_nvram_val_init_common(value, BHND_NVRAM_VAL_STORAGE_AUTO,
     fmt, inp, ilen, itype, flags);
 if (error)
  bhnd_nvram_val_release(value);

 return (error);
}
