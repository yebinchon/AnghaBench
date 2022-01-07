
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union ecore_mcast_config_data {int bin; int mac; } ;
typedef int uint8_t ;
struct eth_multicast_rules_ramrod_data {TYPE_3__* rules; } ;
struct ecore_raw_obj {int func_id; scalar_t__ rdata; } ;
struct TYPE_4__ {int vec; } ;
struct TYPE_5__ {TYPE_1__ aprox_match; } ;
struct ecore_mcast_obj {int engine_id; TYPE_2__ registry; struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_mcast_cmd { ____Placeholder_ecore_mcast_cmd } ecore_mcast_cmd ;
struct TYPE_6__ {int cmd_general_data; int bin_id; int func_id; int engine_id; } ;


 int BIT_VEC64_SET_BIT (int ,int) ;
 int ECORE_ERR (char*,int) ;



 int ECORE_MSG (struct bxe_softc*,char*,char*,int) ;
 int ETH_MULTICAST_RULES_CMD_IS_ADD ;
 int ecore_mcast_bin_from_mac (int ) ;
 int ecore_mcast_clear_first_bin (struct ecore_mcast_obj*) ;
 int ecore_mcast_get_rx_tx_flag (struct ecore_mcast_obj*) ;

__attribute__((used)) static void ecore_mcast_set_one_rule_e2(struct bxe_softc *sc,
     struct ecore_mcast_obj *o, int idx,
     union ecore_mcast_config_data *cfg_data,
     enum ecore_mcast_cmd cmd)
{
 struct ecore_raw_obj *r = &o->raw;
 struct eth_multicast_rules_ramrod_data *data =
  (struct eth_multicast_rules_ramrod_data *)(r->rdata);
 uint8_t func_id = r->func_id;
 uint8_t rx_tx_add_flag = ecore_mcast_get_rx_tx_flag(o);
 int bin;

 if ((cmd == 130) || (cmd == 128))
  rx_tx_add_flag |= ETH_MULTICAST_RULES_CMD_IS_ADD;

 data->rules[idx].cmd_general_data |= rx_tx_add_flag;


 switch (cmd) {
 case 130:
  bin = ecore_mcast_bin_from_mac(cfg_data->mac);
  BIT_VEC64_SET_BIT(o->registry.aprox_match.vec, bin);
  break;

 case 129:






  bin = ecore_mcast_clear_first_bin(o);
  break;

 case 128:
  bin = cfg_data->bin;
  break;

 default:
  ECORE_ERR("Unknown command: %d\n", cmd);
  return;
 }

 ECORE_MSG(sc, "%s bin %d\n",
    ((rx_tx_add_flag & ETH_MULTICAST_RULES_CMD_IS_ADD) ?
     "Setting" : "Clearing"), bin);

 data->rules[idx].bin_id = (uint8_t)bin;
 data->rules[idx].func_id = func_id;
 data->rules[idx].engine_id = o->engine_id;
}
