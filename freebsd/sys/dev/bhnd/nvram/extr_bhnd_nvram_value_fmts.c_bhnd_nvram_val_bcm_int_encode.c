
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val ;
typedef scalar_t__ bhnd_nvram_type ;


 scalar_t__ BHND_NVRAM_TYPE_STRING ;
 int bhnd_nvram_val_generic_encode (int *,void*,size_t*,scalar_t__) ;
 int bhnd_nvram_val_printf (int *,char*,void*,size_t*,char*) ;

__attribute__((used)) static int
bhnd_nvram_val_bcm_int_encode(bhnd_nvram_val *value, void *outp, size_t *olen,
    bhnd_nvram_type otype)
{


 if (otype == BHND_NVRAM_TYPE_STRING)
  return (bhnd_nvram_val_printf(value, "%[]s", outp, olen, ","));

 return (bhnd_nvram_val_generic_encode(value, outp, olen, otype));
}
