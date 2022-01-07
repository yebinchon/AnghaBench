
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val_fmt ;
typedef int bhnd_nvram_type ;



 int EFTYPE ;
 int bhnd_nvram_base_type (int) ;
 int bhnd_nvram_is_int_type (int) ;
 int bhnd_nvram_val_bcm_string_fmt ;

__attribute__((used)) static int
bhnd_nvram_val_bcm_int_filter(const bhnd_nvram_val_fmt **fmt, const void *inp,
    size_t ilen, bhnd_nvram_type itype)
{
 bhnd_nvram_type itype_base;

 itype_base = bhnd_nvram_base_type(itype);

 switch (itype_base) {
 case 128:






  *fmt = &bhnd_nvram_val_bcm_string_fmt;
  return (0);

 default:
  if (bhnd_nvram_is_int_type(itype_base))
   return (0);

  return (EFTYPE);
 }
}
