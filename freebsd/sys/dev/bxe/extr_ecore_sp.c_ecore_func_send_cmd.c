
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_func_state_params {int cmd; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_ERR (char*,int) ;
 int ECORE_INVAL ;
 int ecore_func_hw_init (struct bxe_softc*,struct ecore_func_state_params*) ;
 int ecore_func_hw_reset (struct bxe_softc*,struct ecore_func_state_params*) ;
 int ecore_func_send_afex_update (struct bxe_softc*,struct ecore_func_state_params*) ;
 int ecore_func_send_afex_viflists (struct bxe_softc*,struct ecore_func_state_params*) ;
 int ecore_func_send_set_timesync (struct bxe_softc*,struct ecore_func_state_params*) ;
 int ecore_func_send_start (struct bxe_softc*,struct ecore_func_state_params*) ;
 int ecore_func_send_stop (struct bxe_softc*,struct ecore_func_state_params*) ;
 int ecore_func_send_switch_update (struct bxe_softc*,struct ecore_func_state_params*) ;
 int ecore_func_send_tx_start (struct bxe_softc*,struct ecore_func_state_params*) ;
 int ecore_func_send_tx_stop (struct bxe_softc*,struct ecore_func_state_params*) ;

__attribute__((used)) static int ecore_func_send_cmd(struct bxe_softc *sc,
          struct ecore_func_state_params *params)
{
 switch (params->cmd) {
 case 135:
  return ecore_func_hw_init(sc, params);
 case 132:
  return ecore_func_send_start(sc, params);
 case 131:
  return ecore_func_send_stop(sc, params);
 case 134:
  return ecore_func_hw_reset(sc, params);
 case 137:
  return ecore_func_send_afex_update(sc, params);
 case 136:
  return ecore_func_send_afex_viflists(sc, params);
 case 128:
  return ecore_func_send_tx_stop(sc, params);
 case 129:
  return ecore_func_send_tx_start(sc, params);
 case 130:
  return ecore_func_send_switch_update(sc, params);
 case 133:
  return ecore_func_send_set_timesync(sc, params);
 default:
  ECORE_ERR("Unknown command: %d\n", params->cmd);
  return ECORE_INVAL;
 }
}
