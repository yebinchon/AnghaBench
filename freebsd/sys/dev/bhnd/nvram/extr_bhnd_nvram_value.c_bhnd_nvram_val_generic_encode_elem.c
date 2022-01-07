
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;
 int BHND_NV_PANIC (char*) ;
 int bhnd_nvram_val_elem_type (int *) ;
 int bhnd_nvram_val_encode_bool (void const*,size_t,int,void*,size_t*,int) ;
 int bhnd_nvram_val_encode_data (void const*,size_t,int,void*,size_t*,int) ;
 int bhnd_nvram_val_encode_int (void const*,size_t,int,void*,size_t*,int) ;
 int bhnd_nvram_val_encode_null (void const*,size_t,int,void*,size_t*,int) ;
 int bhnd_nvram_val_encode_string (void const*,size_t,int,void*,size_t*,int) ;

int
bhnd_nvram_val_generic_encode_elem(bhnd_nvram_val *value, const void *inp,
    size_t ilen, void *outp, size_t *olen, bhnd_nvram_type otype)
{
 bhnd_nvram_type itype;

 itype = bhnd_nvram_val_elem_type(value);
 switch (itype) {
 case 133:
  return (bhnd_nvram_val_encode_null(inp, ilen, itype, outp, olen,
      otype));

 case 138:
  return (bhnd_nvram_val_encode_data(inp, ilen, itype, outp,
      olen, otype));

 case 132:
 case 139:
  return (bhnd_nvram_val_encode_string(inp, ilen, itype, outp,
      olen, otype));

 case 140:
  return (bhnd_nvram_val_encode_bool(inp, ilen, itype, outp, olen,
      otype));

 case 128:
 case 131:
 case 130:
 case 129:
 case 134:
 case 137:
 case 136:
 case 135:
  return (bhnd_nvram_val_encode_int(inp, ilen, itype, outp, olen,
      otype));
 default:
  BHND_NV_PANIC("missing encode_elem() implementation");
 }
}
