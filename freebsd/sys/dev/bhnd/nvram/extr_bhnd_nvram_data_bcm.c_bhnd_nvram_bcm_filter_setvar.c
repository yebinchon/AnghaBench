
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_val ;


 int BHND_NVRAM_VAL_DYNAMIC ;
 int EINVAL ;
 int bhnd_nvram_trim_path_name (char const*) ;
 int bhnd_nvram_val_bcm_string_fmt ;
 int bhnd_nvram_val_convert_new (int **,int *,int *,int ) ;
 int bhnd_nvram_validate_name (int ) ;

__attribute__((used)) static int
bhnd_nvram_bcm_filter_setvar(struct bhnd_nvram_data *nv, const char *name,
    bhnd_nvram_val *value, bhnd_nvram_val **result)
{
 bhnd_nvram_val *str;
 int error;


 if (!bhnd_nvram_validate_name(bhnd_nvram_trim_path_name(name)))
  return (EINVAL);


 error = bhnd_nvram_val_convert_new(&str, &bhnd_nvram_val_bcm_string_fmt,
     value, BHND_NVRAM_VAL_DYNAMIC);
 if (error)
  return (error);


 *result = str;
 return (0);
}
