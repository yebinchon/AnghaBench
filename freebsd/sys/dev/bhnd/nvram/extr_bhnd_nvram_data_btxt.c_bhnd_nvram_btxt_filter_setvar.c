
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_val ;
typedef scalar_t__ bhnd_nvram_type ;


 scalar_t__ BHND_NVRAM_TYPE_STRING ;
 int BHND_NVRAM_VAL_DYNAMIC ;
 int BHND_NV_ASSERT (int,char*) ;
 int BHND_NV_LOG (char*,char const) ;
 int EINVAL ;
 int bhnd_nvram_trim_path_name (char const*) ;
 int bhnd_nvram_val_bcm_string_fmt ;
 char* bhnd_nvram_val_bytes (int *,size_t*,scalar_t__*) ;
 int bhnd_nvram_val_convert_new (int **,int *,int *,int ) ;
 int bhnd_nvram_val_release (int *) ;
 int bhnd_nvram_validate_name (int ) ;

__attribute__((used)) static int
bhnd_nvram_btxt_filter_setvar(struct bhnd_nvram_data *nv, const char *name,
    bhnd_nvram_val *value, bhnd_nvram_val **result)
{
 bhnd_nvram_val *str;
 const char *inp;
 bhnd_nvram_type itype;
 size_t ilen;
 int error;


 if (!bhnd_nvram_validate_name(bhnd_nvram_trim_path_name(name)))
  return (EINVAL);


 error = bhnd_nvram_val_convert_new(&str, &bhnd_nvram_val_bcm_string_fmt,
     value, BHND_NVRAM_VAL_DYNAMIC);
 if (error)
  return (error);



 inp = bhnd_nvram_val_bytes(str, &ilen, &itype);
 BHND_NV_ASSERT(itype == BHND_NVRAM_TYPE_STRING, ("non-string value"));
 for (size_t i = 0; i < ilen; i++) {
  switch (inp[i]) {
  case '\n':
  case '#':
   BHND_NV_LOG("invalid character (%#hhx) in value\n",
       inp[i]);
   bhnd_nvram_val_release(str);
   return (EINVAL);
  }
 }


 *result = str;
 return (0);
}
