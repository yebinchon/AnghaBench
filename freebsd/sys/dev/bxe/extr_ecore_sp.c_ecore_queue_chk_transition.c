
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ecore_queue_update_params {int update_flags; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ setup; struct ecore_queue_update_params update; } ;
struct ecore_queue_state_params {int cmd; TYPE_2__ params; int ramrod_flags; } ;
struct ecore_queue_sp_obj {int state; int num_tx_only; int pending; int next_state; int next_tx_only; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_queue_cmd { ____Placeholder_ecore_queue_cmd } ecore_queue_cmd ;
typedef enum ecore_q_state { ____Placeholder_ecore_q_state } ecore_q_state ;


 int ECORE_BUSY ;
 int ECORE_ERR (char*,int) ;
 int ECORE_INVAL ;
 int ECORE_MSG (struct bxe_softc*,char*,int,int,...) ;
 int ECORE_Q_CMD_ACTIVATE ;
 int ECORE_Q_CMD_CFC_DEL ;
 int ECORE_Q_CMD_DEACTIVATE ;
 int ECORE_Q_CMD_EMPTY ;
 int ECORE_Q_CMD_HALT ;
 int ECORE_Q_CMD_INIT ;
 int ECORE_Q_CMD_SETUP ;
 int ECORE_Q_CMD_SETUP_TX_ONLY ;
 int ECORE_Q_CMD_TERMINATE ;
 int ECORE_Q_CMD_UPDATE ;
 int ECORE_Q_CMD_UPDATE_TPA ;
 int ECORE_Q_FLG_ACTIVE ;



 int ECORE_Q_STATE_MAX ;





 int ECORE_Q_UPDATE_ACTIVATE ;
 int ECORE_Q_UPDATE_ACTIVATE_CHNG ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_TEST_BIT (int ,int *) ;
 int RAMROD_DRV_CLR_ONLY ;

__attribute__((used)) static int ecore_queue_chk_transition(struct bxe_softc *sc,
          struct ecore_queue_sp_obj *o,
          struct ecore_queue_state_params *params)
{
 enum ecore_q_state state = o->state, next_state = ECORE_Q_STATE_MAX;
 enum ecore_queue_cmd cmd = params->cmd;
 struct ecore_queue_update_params *update_params =
   &params->params.update;
 uint8_t next_tx_only = o->num_tx_only;




 if (ECORE_TEST_BIT(RAMROD_DRV_CLR_ONLY, &params->ramrod_flags)) {
  o->pending = 0;
  o->next_state = ECORE_Q_STATE_MAX;
 }




 if (o->pending) {
  ECORE_ERR("Blocking transition since pending was %lx\n",
     o->pending);
  return ECORE_BUSY;
 }

 switch (state) {
 case 130:
  if (cmd == ECORE_Q_CMD_INIT)
   next_state = 133;

  break;
 case 133:
  if (cmd == ECORE_Q_CMD_SETUP) {
   if (ECORE_TEST_BIT(ECORE_Q_FLG_ACTIVE,
        &params->params.setup.flags))
    next_state = 135;
   else
    next_state = 134;
  }

  break;
 case 135:
  if (cmd == ECORE_Q_CMD_DEACTIVATE)
   next_state = 134;

  else if ((cmd == ECORE_Q_CMD_EMPTY) ||
    (cmd == ECORE_Q_CMD_UPDATE_TPA))
   next_state = 135;

  else if (cmd == ECORE_Q_CMD_SETUP_TX_ONLY) {
   next_state = 131;
   next_tx_only = 1;
  }

  else if (cmd == ECORE_Q_CMD_HALT)
   next_state = 129;

  else if (cmd == ECORE_Q_CMD_UPDATE) {



   if (ECORE_TEST_BIT(ECORE_Q_UPDATE_ACTIVATE_CHNG,
        &update_params->update_flags) &&
       !ECORE_TEST_BIT(ECORE_Q_UPDATE_ACTIVATE,
         &update_params->update_flags))
    next_state = 134;
   else
    next_state = 135;
  }

  break;
 case 131:
  if (cmd == ECORE_Q_CMD_TERMINATE)
   next_state = 132;

  else if (cmd == ECORE_Q_CMD_SETUP_TX_ONLY) {
   next_state = 131;
   next_tx_only = o->num_tx_only + 1;
  }

  else if ((cmd == ECORE_Q_CMD_EMPTY) ||
    (cmd == ECORE_Q_CMD_UPDATE_TPA))
   next_state = 131;

  else if (cmd == ECORE_Q_CMD_UPDATE) {



   if (ECORE_TEST_BIT(ECORE_Q_UPDATE_ACTIVATE_CHNG,
        &update_params->update_flags) &&
       !ECORE_TEST_BIT(ECORE_Q_UPDATE_ACTIVATE,
         &update_params->update_flags))
    next_state = 134;
   else
    next_state = 131;
  }

  break;
 case 132:
  if (cmd == ECORE_Q_CMD_CFC_DEL) {
   next_tx_only = o->num_tx_only - 1;
   if (next_tx_only == 0)
    next_state = 135;
   else
    next_state = 131;
  }

  break;
 case 134:
  if (cmd == ECORE_Q_CMD_ACTIVATE)
   next_state = 135;

  else if ((cmd == ECORE_Q_CMD_EMPTY) ||
    (cmd == ECORE_Q_CMD_UPDATE_TPA))
   next_state = 134;

  else if (cmd == ECORE_Q_CMD_HALT)
   next_state = 129;

  else if (cmd == ECORE_Q_CMD_UPDATE) {



   if (ECORE_TEST_BIT(ECORE_Q_UPDATE_ACTIVATE_CHNG,
        &update_params->update_flags) &&
       ECORE_TEST_BIT(ECORE_Q_UPDATE_ACTIVATE,
        &update_params->update_flags)){
    if (o->num_tx_only == 0)
     next_state = 135;
    else
     next_state = 131;
   } else
    next_state = 134;
  }

  break;
 case 129:
  if (cmd == ECORE_Q_CMD_TERMINATE)
   next_state = 128;

  break;
 case 128:
  if (cmd == ECORE_Q_CMD_CFC_DEL)
   next_state = 130;

  break;
 default:
  ECORE_ERR("Illegal state: %d\n", state);
 }


 if (next_state != ECORE_Q_STATE_MAX) {
  ECORE_MSG(sc, "Good state transition: %d(%d)->%d\n",
     state, cmd, next_state);
  o->next_state = next_state;
  o->next_tx_only = next_tx_only;
  return ECORE_SUCCESS;
 }

 ECORE_MSG(sc, "Bad state transition request: %d %d\n", state, cmd);

 return ECORE_INVAL;
}
