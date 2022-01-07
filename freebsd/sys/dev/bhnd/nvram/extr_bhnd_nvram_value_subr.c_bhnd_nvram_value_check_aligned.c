
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bhnd_nvram_type ;


 scalar_t__ BHND_NVRAM_TYPE_NULL ;
 int BHND_NV_ASSERT (int,char*) ;
 int EFAULT ;
 int EFTYPE ;
 int bhnd_nvram_is_array_type (scalar_t__) ;
 size_t bhnd_nvram_type_host_align (scalar_t__) ;
 size_t bhnd_nvram_type_width (scalar_t__) ;

int
bhnd_nvram_value_check_aligned(const void *inp, size_t ilen,
    bhnd_nvram_type itype)
{
 size_t align, width;



 if (itype == BHND_NVRAM_TYPE_NULL) {
  if (ilen != 0)
   return (EFAULT);

  return (0);
 }


 align = bhnd_nvram_type_host_align(itype);
 BHND_NV_ASSERT(align != 0, ("invalid zero alignment"));
 if ((uintptr_t)inp % align != 0)
  return (EFAULT);


 width = bhnd_nvram_type_width(itype);
 if (width == 0)
  return (0);


 if (ilen % width != 0)
  return (EFAULT);



 if (!bhnd_nvram_is_array_type(itype) && ilen != width)
   return (EFTYPE);

 return (0);
}
