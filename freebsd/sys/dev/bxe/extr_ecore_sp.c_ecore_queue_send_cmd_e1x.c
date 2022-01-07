
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_state_params {int cmd; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_ERR (char*,int) ;
 int ECORE_INVAL ;
 int ecore_q_send_setup_e1x (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int ecore_queue_send_cmd_cmn (struct bxe_softc*,struct ecore_queue_state_params*) ;

__attribute__((used)) static int ecore_queue_send_cmd_e1x(struct bxe_softc *sc,
        struct ecore_queue_state_params *params)
{
 switch (params->cmd) {
 case 132:
  return ecore_q_send_setup_e1x(sc, params);
 case 133:
 case 131:
 case 136:
 case 138:
 case 129:
 case 128:
 case 134:
 case 137:
 case 130:
 case 135:
  return ecore_queue_send_cmd_cmn(sc, params);
 default:
  ECORE_ERR("Unknown command: %d\n", params->cmd);
  return ECORE_INVAL;
 }
}
