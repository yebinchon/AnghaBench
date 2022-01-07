
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u_char ;
typedef int bhnd_nvram_type ;


 int BHND_NV_ASSERT (int,char*) ;
 int BHND_NV_LOG (char*,int ) ;
 int bhnd_nvram_type_name (int ) ;
 size_t bhnd_nvram_value_size (void const*,size_t,int ,int) ;

const void *
bhnd_nvram_value_array_next(const void *inp, size_t ilen, bhnd_nvram_type itype,
    const void *prev, size_t *olen)
{
 const u_char *next;
 size_t offset;


 if (prev == ((void*)0)) {

  if (ilen == 0)
   return (((void*)0));

  *olen = bhnd_nvram_value_size(inp, ilen, itype, 1);
  return (inp);
 }


 BHND_NV_ASSERT(prev >= (const void *)inp, ("invalid cookiep"));
 next = (const u_char *)prev + *olen;
 offset = (size_t)(next - (const u_char *)inp);

 if (offset >= ilen) {

  return (((void*)0));
 }


 *olen = bhnd_nvram_value_size(next, ilen - offset, itype, 1);
 if (ilen - offset < *olen) {
  BHND_NV_LOG("short element of type %s -- misaligned "
      "representation", bhnd_nvram_type_name(itype));
  return (((void*)0));
 }

 return (next);
}
