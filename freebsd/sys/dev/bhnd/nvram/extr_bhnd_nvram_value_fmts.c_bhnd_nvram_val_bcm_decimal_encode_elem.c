
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val ;
typedef scalar_t__ bhnd_nvram_type ;


 scalar_t__ BHND_NVRAM_TYPE_STRING ;
 int BHND_NV_ASSERT (int ,char*) ;
 int bhnd_nvram_is_int_type (scalar_t__) ;
 scalar_t__ bhnd_nvram_is_signed_type (scalar_t__) ;
 scalar_t__ bhnd_nvram_val_elem_type (int *) ;
 int bhnd_nvram_val_generic_encode_elem (int *,void const*,size_t,void*,size_t*,scalar_t__) ;
 int bhnd_nvram_value_printf (char const*,void const*,size_t,scalar_t__,void*,size_t*) ;

__attribute__((used)) static int
bhnd_nvram_val_bcm_decimal_encode_elem(bhnd_nvram_val *value, const void *inp,
    size_t ilen, void *outp, size_t *olen, bhnd_nvram_type otype)
{
 const char *sfmt;
 bhnd_nvram_type itype;

 itype = bhnd_nvram_val_elem_type(value);
 BHND_NV_ASSERT(bhnd_nvram_is_int_type(itype), ("invalid type"));


 if (otype != BHND_NVRAM_TYPE_STRING)
  return (bhnd_nvram_val_generic_encode_elem(value, inp, ilen,
      outp, olen, otype));

 sfmt = bhnd_nvram_is_signed_type(itype) ? "%I64d" : "%I64u";
 return (bhnd_nvram_value_printf(sfmt, inp, ilen, itype, outp, olen));
}
