
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_val_fmt ;
typedef int bhnd_nvram_type ;




 int EFTYPE ;

__attribute__((used)) static int
bhnd_nvram_val_bcmstr_csv_filter(const bhnd_nvram_val_fmt **fmt,
    const void *inp, size_t ilen, bhnd_nvram_type itype)
{
 switch (itype) {
 case 129:
 case 128:
  return (0);
 default:
  return (EFTYPE);
 }
}
