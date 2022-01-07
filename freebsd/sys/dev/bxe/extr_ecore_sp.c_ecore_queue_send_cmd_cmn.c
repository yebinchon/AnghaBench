
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_state_params {int cmd; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_ERR (char*,int) ;
 int ECORE_INVAL ;
 int ecore_q_init (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_q_send_activate (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_q_send_cfc_del (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_q_send_deactivate (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_q_send_empty (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_q_send_halt (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_q_send_setup_tx_only (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_q_send_terminate (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_q_send_update (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_q_send_update_tpa (struct bxe_softc*,struct ecore_queue_state_params*) ;

__attribute__((used)) static inline int ecore_queue_send_cmd_cmn(struct bxe_softc *sc,
     struct ecore_queue_state_params *params)
{
 switch (params->cmd) {
 case 132:
  return ecore_q_init(sc, params);
 case 131:
  return ecore_q_send_setup_tx_only(sc, params);
 case 135:
  return ecore_q_send_deactivate(sc, params);
 case 137:
  return ecore_q_send_activate(sc, params);
 case 129:
  return ecore_q_send_update(sc, params);
 case 128:
  return ecore_q_send_update_tpa(sc, params);
 case 133:
  return ecore_q_send_halt(sc, params);
 case 136:
  return ecore_q_send_cfc_del(sc, params);
 case 130:
  return ecore_q_send_terminate(sc, params);
 case 134:
  return ecore_q_send_empty(sc, params);
 default:
  ECORE_ERR("Unknown command: %d\n", params->cmd);
  return ECORE_INVAL;
 }
}
