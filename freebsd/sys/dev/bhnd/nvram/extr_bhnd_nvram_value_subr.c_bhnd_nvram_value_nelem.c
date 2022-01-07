
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_type ;
 int BHND_NV_ASSERT (int,char*) ;
 int BHND_NV_PANIC (char*,int) ;
 int EFAULT ;
 int EFTYPE ;
 size_t bhnd_nvram_type_width (int) ;
 int bhnd_nvram_value_check_aligned (void const*,size_t,int) ;
 size_t strnlen (char const*,size_t) ;

int
bhnd_nvram_value_nelem(const void *inp, size_t ilen, bhnd_nvram_type itype,
    size_t *nelem)
{
 int error;

 BHND_NV_ASSERT(inp != ((void*)0), ("NULL inp"));


 if ((error = bhnd_nvram_value_check_aligned(inp, ilen, itype)))
  return (error);

 switch (itype) {
 case 147:

  *nelem = 1;
  return (0);

 case 138:

  if (ilen != 0)
   return (EFAULT);


  *nelem = 1;
  return (0);

 case 137:

  *nelem = 1;
  return (0);

 case 136: {
  const char *p;
  size_t nleft;



  p = inp;
  nleft = ilen;
  *nelem = 0;
  while (nleft > 0) {
   size_t slen;


   (*nelem)++;


   slen = strnlen(p, nleft);
   nleft -= slen;


   p += slen;



   if (nleft > 0) {
    nleft--;
    p++;
   }
  }

  return (0);
 }

 case 128:
 case 134:
 case 132:
 case 130:
 case 139:
 case 145:
 case 143:
 case 141:
 case 148:
 case 150: {
  size_t width = bhnd_nvram_type_width(itype);
  BHND_NV_ASSERT(width != 0, ("invalid width"));

  *nelem = ilen / width;
  return (0);
 }

 case 140:
 case 129:
 case 149:
 case 146:
 case 135:
 case 144:
 case 133:
 case 142:
 case 131:
 case 151:



  if (ilen != bhnd_nvram_type_width(itype))
   return (EFTYPE);
  *nelem = 1;
  return (0);
 }


 BHND_NV_PANIC("bhnd nvram type %u unknown", itype);
}
