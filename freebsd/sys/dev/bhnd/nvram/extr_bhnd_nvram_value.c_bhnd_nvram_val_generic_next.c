
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int * bhnd_nvram_val_bytes (int *,size_t*,int *) ;
 void const* bhnd_nvram_value_array_next (int const*,size_t,int ,void const*,size_t*) ;

const void *
bhnd_nvram_val_generic_next(bhnd_nvram_val *value, const void *prev,
    size_t *olen)
{
 const uint8_t *inp;
 bhnd_nvram_type itype;
 size_t ilen;


 inp = bhnd_nvram_val_bytes(value, &ilen, &itype);
 return (bhnd_nvram_value_array_next(inp, ilen, itype, prev, olen));
}
