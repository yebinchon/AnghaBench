
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gft_profile_type { ____Placeholder_gft_profile_type } gft_profile_type ;
typedef enum ecore_filter_config_mode { ____Placeholder_ecore_filter_config_mode } ecore_filter_config_mode ;


 int ECORE_FILTER_CONFIG_MODE_5_TUPLE ;
 int ECORE_FILTER_CONFIG_MODE_IP_DEST ;
 int GFT_PROFILE_TYPE_4_TUPLE ;
 int GFT_PROFILE_TYPE_IP_DST_ADDR ;
 int GFT_PROFILE_TYPE_L4_DST_PORT ;

__attribute__((used)) static enum gft_profile_type
ecore_arfs_mode_to_hsi(enum ecore_filter_config_mode mode)
{
 if (mode == ECORE_FILTER_CONFIG_MODE_5_TUPLE)
  return GFT_PROFILE_TYPE_4_TUPLE;
 if (mode == ECORE_FILTER_CONFIG_MODE_IP_DEST)
  return GFT_PROFILE_TYPE_IP_DST_ADDR;
 return GFT_PROFILE_TYPE_L4_DST_PORT;
}
