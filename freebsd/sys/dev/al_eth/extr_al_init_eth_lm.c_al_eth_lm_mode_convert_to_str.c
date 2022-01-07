
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum al_eth_lm_link_mode { ____Placeholder_al_eth_lm_link_mode } al_eth_lm_link_mode ;
const char *
al_eth_lm_mode_convert_to_str(enum al_eth_lm_link_mode val)
{

 switch (val) {
 case 128:
  return ("AL_ETH_LM_MODE_DISCONNECTED");
 case 131:
  return ("AL_ETH_LM_MODE_10G_OPTIC");
 case 132:
  return ("AL_ETH_LM_MODE_10G_DA");
 case 130:
  return ("AL_ETH_LM_MODE_1G");
 case 129:
  return ("AL_ETH_LM_MODE_25G");
 }

 return ("N/A");
}
