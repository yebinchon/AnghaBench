
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_VAL_DYNAMIC ;
 int BHND_NV_LOG (char*,char const*,...) ;
 int BHND_NV_PRINT_WIDTH (size_t) ;
 int EINVAL ;
 size_t NVRAM_TLV_ENVP_DATA_MAX_LEN ;
 int bhnd_nvram_trim_path_name (char const*) ;
 int bhnd_nvram_val_bcm_string_fmt ;
 char* bhnd_nvram_val_bytes (int *,size_t*,int *) ;
 int bhnd_nvram_val_convert_new (int **,int *,int *,int ) ;
 int bhnd_nvram_val_release (int *) ;
 int bhnd_nvram_validate_name (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
bhnd_nvram_tlv_filter_setvar(struct bhnd_nvram_data *nv, const char *name,
    bhnd_nvram_val *value, bhnd_nvram_val **result)
{
 bhnd_nvram_val *str;
 const char *inp;
 bhnd_nvram_type itype;
 size_t ilen;
 size_t name_len, tlv_nremain;
 int error;

 tlv_nremain = NVRAM_TLV_ENVP_DATA_MAX_LEN;


 if (!bhnd_nvram_validate_name(bhnd_nvram_trim_path_name(name)))
  return (EINVAL);


 name_len = strlen(name) + 1;
 if (tlv_nremain < name_len) {
  BHND_NV_LOG("'%s=' exceeds maximum TLV_ENV record length\n",
      name);
  return (EINVAL);
 }
 tlv_nremain -= name_len;


 error = bhnd_nvram_val_convert_new(&str, &bhnd_nvram_val_bcm_string_fmt,
     value, BHND_NVRAM_VAL_DYNAMIC);
 if (error)
  return (error);


 inp = bhnd_nvram_val_bytes(str, &ilen, &itype);
 if (tlv_nremain < ilen) {
  BHND_NV_LOG("'%.*s\\0' exceeds maximum TLV_ENV record length\n",
      BHND_NV_PRINT_WIDTH(ilen), inp);

  bhnd_nvram_val_release(str);
  return (EINVAL);
 }
 tlv_nremain -= name_len;


 *result = str;
 return (0);
}
