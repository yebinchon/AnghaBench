
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int led32 ;
typedef int led16 ;
typedef int ival ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;





 int BHND_NV_PANIC (char*,int ) ;
 int EFTYPE ;
 int ENOMEM ;
 int ERANGE ;
 int UINT16_MAX ;
 int UINT32_MAX ;
 int bhnd_nvram_parse_int (char const*,size_t,int ,size_t*,int*,size_t*,int) ;
 int bhnd_nvram_type_name (int) ;
 int bhnd_nvram_val_elem_type (int *) ;
 int bhnd_nvram_value_coerce (void const*,size_t,int,void*,size_t*,int) ;
 int bhnd_nvram_value_printf (char*,int*,int,int,void*,size_t*) ;

__attribute__((used)) static int
bhnd_nvram_val_bcm_leddc_encode_elem(bhnd_nvram_val *value, const void *inp,
    size_t ilen, void *outp, size_t *olen, bhnd_nvram_type otype)
{
 bhnd_nvram_type itype;
 size_t limit, nbytes;
 int error;
 uint16_t led16;
 uint32_t led32;
 bool led16_lossy;
 union {
  uint16_t u16;
  uint32_t u32;
 } strval;
 itype = bhnd_nvram_val_elem_type(value);
 nbytes = 0;
 led16_lossy = 0;


 if (outp != ((void*)0))
  limit = *olen;
 else
  limit = 0;



 if (otype == itype) {
  return (bhnd_nvram_value_coerce(inp, ilen, itype, outp, olen,
      otype));
 }



 if (itype == 130) {
  const char *p;
  uint32_t ival;
  size_t nlen, parsed;


  p = inp;
  nlen = sizeof(ival);
  error = bhnd_nvram_parse_int(p, ilen, 0, &parsed, &ival, &nlen,
      128);
  if (error)
   return (error);


  if (parsed < ilen && *(p+parsed) != '\0')
   return (EFTYPE);



  inp = &strval;
  if (ival & 0xFFFF0000) {
   strval.u32 = ival;
   itype = 128;
  } else {
   strval.u16 = ival;
   itype = 129;
  }
 }


 switch (itype) {
 case 129: {
  led16 = *(const uint16_t *)inp;
  led32 = ((led16 & 0xFF00) << 16) | ((led16 & 0x00FF) << 8);




  if (led16 == UINT16_MAX)
   led32 = UINT32_MAX;

  break;
 }

 case 128:
  led32 = *(const uint32_t *)inp;
  led16 = ((led32 >> 16) & 0xFF00) | ((led32 >> 8) & 0x00FF);
  if ((led32 & 0x00FF00FF) != 0 && led32 != UINT32_MAX)
   led16_lossy = 1;

  break;
 default:
  BHND_NV_PANIC("unsupported backing data type: %s",
      bhnd_nvram_type_name(itype));
 }




 switch (otype) {
 case 130:



  if (!led16_lossy) {
   return (bhnd_nvram_value_printf("0x%04hX", &led16,
       sizeof(led16), 129, outp, olen));
  } else {
   return (bhnd_nvram_value_printf("0x%04X", &led32,
       sizeof(led32), 128, outp, olen));
  }

  break;

 case 129: {

  if (led16_lossy)
   return (ERANGE);


  nbytes += sizeof(uint16_t);
  if (limit >= nbytes)
   *(uint16_t *)outp = led16;

  break;
 }

 case 128:

  nbytes += sizeof(uint32_t);
  if (limit >= nbytes)
   *(uint32_t *)outp = led32;
  break;

 default:

  return (EFTYPE);
 }


 *olen = nbytes;


 if (limit < nbytes && outp != ((void*)0))
  return (ENOMEM);

 return (0);
}
