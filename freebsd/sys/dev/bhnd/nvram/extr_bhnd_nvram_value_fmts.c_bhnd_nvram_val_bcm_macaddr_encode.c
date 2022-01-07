
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 scalar_t__ BHND_NVRAM_TYPE_STRING ;
 scalar_t__ bhnd_nvram_base_type (int ) ;
 void* bhnd_nvram_val_bytes (int *,size_t*,int *) ;
 int bhnd_nvram_val_printf (int *,char*,void*,size_t*,char*) ;
 int bhnd_nvram_value_coerce (void const*,size_t,int ,void*,size_t*,int ) ;

__attribute__((used)) static int
bhnd_nvram_val_bcm_macaddr_encode(bhnd_nvram_val *value, void *outp,
    size_t *olen, bhnd_nvram_type otype)
{
 const void *inp;
 bhnd_nvram_type itype;
 size_t ilen;





 if (bhnd_nvram_base_type(otype) == BHND_NVRAM_TYPE_STRING) {
  return (bhnd_nvram_val_printf(value, "%[]02hhX", outp, olen,
      ":"));
 }


 inp = bhnd_nvram_val_bytes(value, &ilen, &itype);
 return (bhnd_nvram_value_coerce(inp, ilen, itype, outp, olen, otype));}
