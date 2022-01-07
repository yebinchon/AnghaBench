
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int EFTYPE ;
 scalar_t__ bhnd_nvram_is_int_type (int ) ;
 int bhnd_nvram_parse_int (void const*,size_t,int,size_t*,void*,size_t*,int ) ;
 int bhnd_nvram_val_elem_type (int *) ;
 int bhnd_nvram_value_coerce (void const*,size_t,int ,void*,size_t*,int ) ;

__attribute__((used)) static int
bhnd_nvram_val_bcm_macaddr_string_encode_elem(bhnd_nvram_val *value,
    const void *inp, size_t ilen, void *outp, size_t *olen,
    bhnd_nvram_type otype)
{
 size_t nparsed;
 int error;



 if (bhnd_nvram_is_int_type(otype)) {
  error = bhnd_nvram_parse_int(inp, ilen, 16, &nparsed, outp,
      olen, otype);
  if (error)
   return (error);

  if (nparsed != ilen)
   return (EFTYPE);

  return (0);
 }


 return (bhnd_nvram_value_coerce(inp, ilen,
     bhnd_nvram_val_elem_type(value), outp, olen, otype));
}
