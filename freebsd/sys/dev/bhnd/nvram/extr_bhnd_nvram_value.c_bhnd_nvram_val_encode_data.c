
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bhnd_nvram_type ;


 scalar_t__ BHND_NVRAM_TYPE_DATA ;


 int BHND_NVRAM_TYPE_UINT8_ARRAY ;
 int BHND_NV_ASSERT (int,char*) ;
 int bhnd_nvram_value_coerce (void const*,size_t,int ,void*,size_t*,scalar_t__) ;
 int bhnd_nvram_value_printf (char*,void const*,size_t,int ,void*,size_t*,char*) ;

__attribute__((used)) static int
bhnd_nvram_val_encode_data(const void *inp, size_t ilen, bhnd_nvram_type itype,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
 BHND_NV_ASSERT(itype == BHND_NVRAM_TYPE_DATA,
     ("unsupported type: %d", itype));


 switch (otype) {
 case 129:
 case 128:



  return (bhnd_nvram_value_printf("H%[]02hhX", inp, ilen,
      BHND_NVRAM_TYPE_UINT8_ARRAY, outp, olen, ""));

 default:


  return (bhnd_nvram_value_coerce(inp, ilen,
      BHND_NVRAM_TYPE_UINT8_ARRAY, outp, olen, otype));
 }
}
