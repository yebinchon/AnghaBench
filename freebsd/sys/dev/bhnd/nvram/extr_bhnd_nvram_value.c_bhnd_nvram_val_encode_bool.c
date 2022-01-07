
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ival ;
typedef scalar_t__ bhnd_nvram_type ;
typedef scalar_t__ bhnd_nvram_bool_t ;


 scalar_t__ BHND_NVRAM_TYPE_BOOL ;



 int BHND_NVRAM_TYPE_UINT8 ;
 int BHND_NV_ASSERT (int,char*) ;
 int EFTYPE ;
 int ENOMEM ;
 int bhnd_nvram_is_int_type (scalar_t__) ;
 int bhnd_nvram_val_encode_int (int*,int,int ,void*,size_t*,scalar_t__) ;
 int bhnd_nvram_value_nelem (void const*,size_t,scalar_t__,size_t*) ;
 int strcpy (void*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
bhnd_nvram_val_encode_bool(const void *inp, size_t ilen, bhnd_nvram_type itype,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
 bhnd_nvram_bool_t bval;
 size_t limit, nbytes, nelem;
 int error;

 BHND_NV_ASSERT(itype == BHND_NVRAM_TYPE_BOOL,
     ("unsupported type: %d", itype));


 if (outp != ((void*)0))
  limit = *olen;
 else
  limit = 0;


 if ((error = bhnd_nvram_value_nelem(inp, ilen, itype, &nelem)))
  return (error);

 if (nelem != 1)
  return (EFTYPE);


 bval = (*(const bhnd_nvram_bool_t *)inp != 0) ? 1 : 0;


 switch (otype) {
 case 130:

  if (bval != 0)
   return (EFTYPE);

  nbytes = 0;
  break;

 case 129:
 case 128: {

  const char *str = bval ? "true" : "false";

  nbytes = strlen(str) + 1;
  if (limit > nbytes)
   strcpy(outp, str);

  break;
 }

 default:


  if (bhnd_nvram_is_int_type(otype)) {
   uint8_t ival = bval ? 1 : 0;

   return (bhnd_nvram_val_encode_int(&ival, sizeof(ival),
       BHND_NVRAM_TYPE_UINT8, outp, olen, otype));
  }


  return (EFTYPE);
 }


 *olen = nbytes;
 if (limit < *olen) {
  if (outp == ((void*)0))
   return (0);

  return (ENOMEM);
 }

 return (0);
}
