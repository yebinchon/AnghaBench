
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_eth_lm_init_params {int sfp_detection; int rx_equal; int static_values; int kr_fec_enable; int retimer_channel; int retimer_i2c_addr; int retimer_bus_id; int retimer_exist; struct al_eth_adapter* i2c_context; int link_training; void* default_mode; int sfp_i2c_addr; int sfp_bus_id; int lane; int * serdes_obj; int * adapter; int member_0; } ;
struct TYPE_2__ {int channel; int i2c_addr; int bus_id; int exist; } ;
struct al_eth_adapter {int sfp_detection_needed; int mac_mode; int lm_context; TYPE_1__ retimer; int dont_override_serdes; int lt_en; int an_en; int i2c_adapter_id; int serdes_lane; int serdes_obj; int hal_adapter; } ;


 void* AL_ETH_LM_MODE_10G_DA ;
 void* AL_ETH_LM_MODE_10G_OPTIC ;
 void* AL_ETH_LM_MODE_1G ;


 int SFP_I2C_ADDR ;
 int al_eth_lm_init (int *,struct al_eth_lm_init_params*) ;

__attribute__((used)) static void
al_eth_lm_config(struct al_eth_adapter *adapter)
{
 struct al_eth_lm_init_params params = {0};

 params.adapter = &adapter->hal_adapter;
 params.serdes_obj = &adapter->serdes_obj;
 params.lane = adapter->serdes_lane;
 params.sfp_detection = adapter->sfp_detection_needed;
 if (adapter->sfp_detection_needed == 1) {
  params.sfp_bus_id = adapter->i2c_adapter_id;
  params.sfp_i2c_addr = SFP_I2C_ADDR;
 }

 if (adapter->sfp_detection_needed == 0) {
  switch (adapter->mac_mode) {
  case 129:
   if ((adapter->lt_en != 0) && (adapter->an_en != 0))
    params.default_mode = AL_ETH_LM_MODE_10G_DA;
   else
    params.default_mode = AL_ETH_LM_MODE_10G_OPTIC;
   break;
  case 128:
   params.default_mode = AL_ETH_LM_MODE_1G;
   break;
  default:
   params.default_mode = AL_ETH_LM_MODE_10G_DA;
  }
 } else
  params.default_mode = AL_ETH_LM_MODE_10G_DA;

 params.link_training = adapter->lt_en;
 params.rx_equal = 1;
 params.static_values = !adapter->dont_override_serdes;
 params.i2c_context = adapter;
 params.kr_fec_enable = 0;

 params.retimer_exist = adapter->retimer.exist;
 params.retimer_bus_id = adapter->retimer.bus_id;
 params.retimer_i2c_addr = adapter->retimer.i2c_addr;
 params.retimer_channel = adapter->retimer.channel;

 al_eth_lm_init(&adapter->lm_context, &params);
}
