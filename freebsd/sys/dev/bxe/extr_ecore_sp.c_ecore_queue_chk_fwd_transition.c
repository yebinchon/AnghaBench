
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ tx_only; } ;
struct ecore_queue_state_params {int cmd; TYPE_2__ params; } ;
struct ecore_queue_sp_obj {int state; int next_state; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_queue_cmd { ____Placeholder_ecore_queue_cmd } ecore_queue_cmd ;
typedef enum ecore_q_state { ____Placeholder_ecore_q_state } ecore_q_state ;


 int ECORE_ERR (char*,int) ;
 int ECORE_INVAL ;
 int ECORE_MSG (struct bxe_softc*,char*,int,int,...) ;
 int ECORE_Q_CMD_CFC_DEL ;
 int ECORE_Q_CMD_INIT ;
 int ECORE_Q_CMD_SETUP_TX_ONLY ;
 int ECORE_Q_FLG_ACTIVE ;



 int ECORE_Q_STATE_MAX ;

 int ECORE_SUCCESS ;
 int ECORE_TEST_BIT (int ,int *) ;

__attribute__((used)) static int ecore_queue_chk_fwd_transition(struct bxe_softc *sc,
       struct ecore_queue_sp_obj *o,
     struct ecore_queue_state_params *params)
{
 enum ecore_q_state state = o->state, next_state = ECORE_Q_STATE_MAX;
 enum ecore_queue_cmd cmd = params->cmd;

 switch (state) {
 case 128:
  if (cmd == ECORE_Q_CMD_INIT)
   next_state = 129;

  break;
 case 129:
  if (cmd == ECORE_Q_CMD_SETUP_TX_ONLY) {
   if (ECORE_TEST_BIT(ECORE_Q_FLG_ACTIVE,
        &params->params.tx_only.flags))
    next_state = 131;
   else
    next_state = 130;
  }

  break;
 case 131:
 case 130:
  if (cmd == ECORE_Q_CMD_CFC_DEL)
   next_state = 128;

  break;
 default:
  ECORE_ERR("Illegal state: %d\n", state);
 }


 if (next_state != ECORE_Q_STATE_MAX) {
  ECORE_MSG(sc, "Good state transition: %d(%d)->%d\n",
     state, cmd, next_state);
  o->next_state = next_state;
  return ECORE_SUCCESS;
 }

 ECORE_MSG(sc, "Bad state transition request: %d %d\n", state, cmd);
 return ECORE_INVAL;
}
