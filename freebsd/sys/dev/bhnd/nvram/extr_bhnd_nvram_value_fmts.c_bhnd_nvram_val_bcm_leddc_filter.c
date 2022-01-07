
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val_fmt ;
typedef int bhnd_nvram_type ;





 int EFTYPE ;
 int bhnd_nvram_ident_num_string (char const*,size_t,int ,int *) ;
 size_t bhnd_nvram_trim_field (char const**,size_t,char) ;
 int bhnd_nvram_val_bcm_string_fmt ;

__attribute__((used)) static int
bhnd_nvram_val_bcm_leddc_filter(const bhnd_nvram_val_fmt **fmt,
    const void *inp, size_t ilen, bhnd_nvram_type itype)
{
 const char *p;
 size_t plen;

 switch (itype) {
 case 129:
 case 128:
  return (0);

 case 130:

  p = inp;
  plen = bhnd_nvram_trim_field(&p, ilen, '\0');



  if (!bhnd_nvram_ident_num_string(p, plen, 0, ((void*)0)))
   *fmt = &bhnd_nvram_val_bcm_string_fmt;

  return (0);
 default:
  return (EFTYPE);
 }
}
