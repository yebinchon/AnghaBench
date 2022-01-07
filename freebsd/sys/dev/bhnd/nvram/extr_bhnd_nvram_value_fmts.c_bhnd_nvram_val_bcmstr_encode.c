
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val_fmt ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_TYPE_CHAR_ARRAY ;
 int BHND_NVRAM_VAL_BORROW_DATA ;
 int BHND_NV_LOG (char*,int) ;
 scalar_t__ bhnd_nvram_ident_octet_string (void const*,size_t,int *,int *) ;
 int bhnd_nvram_is_array_type (int ) ;
 int bhnd_nvram_val_bcm_macaddr_string_fmt ;
 int bhnd_nvram_val_bcm_string_csv_fmt ;
 void* bhnd_nvram_val_bytes (int *,size_t*,int *) ;
 int bhnd_nvram_val_encode (int *,void*,size_t*,int ) ;
 int bhnd_nvram_val_init (int *,int const*,void const*,size_t,int ,int ) ;
 int bhnd_nvram_val_release (int *) ;
 int bhnd_nvram_value_coerce (void const*,size_t,int ,void*,size_t*,int ) ;

__attribute__((used)) static int
bhnd_nvram_val_bcmstr_encode(bhnd_nvram_val *value, void *outp, size_t *olen,
    bhnd_nvram_type otype)
{
 bhnd_nvram_val array;
 const bhnd_nvram_val_fmt *array_fmt;
 const void *inp;
 bhnd_nvram_type itype;
 size_t ilen;
 int error;

 inp = bhnd_nvram_val_bytes(value, &ilen, &itype);



 if (!bhnd_nvram_is_array_type(otype) ||
     otype == BHND_NVRAM_TYPE_CHAR_ARRAY)
 {
  return (bhnd_nvram_value_coerce(inp, ilen, itype, outp, olen,
      otype));
 }



 inp = bhnd_nvram_val_bytes(value, &ilen, &itype);
 if (bhnd_nvram_ident_octet_string(inp, ilen, ((void*)0), ((void*)0)))
  array_fmt = &bhnd_nvram_val_bcm_macaddr_string_fmt;
 else
  array_fmt = &bhnd_nvram_val_bcm_string_csv_fmt;


 error = bhnd_nvram_val_init(&array, array_fmt, inp, ilen, itype,
     BHND_NVRAM_VAL_BORROW_DATA);
 if (error) {
  BHND_NV_LOG("error initializing array representation: %d\n",
      error);
  return (error);
 }


 error = bhnd_nvram_val_encode(&array, outp, olen, otype);
 if (error)
  BHND_NV_LOG("error encoding array representation: %d\n", error);

 bhnd_nvram_val_release(&array);

 return (error);
}
