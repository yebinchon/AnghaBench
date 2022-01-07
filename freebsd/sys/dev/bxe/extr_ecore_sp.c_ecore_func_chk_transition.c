
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_func_state_params {int cmd; scalar_t__ ramrod_flags; } ;
struct ecore_func_sp_obj {int state; int next_state; scalar_t__ pending; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_func_state { ____Placeholder_ecore_func_state } ecore_func_state ;
typedef enum ecore_func_cmd { ____Placeholder_ecore_func_cmd } ecore_func_cmd ;


 int ECORE_BUSY ;
 int ECORE_ERR (char*,int) ;
 int ECORE_F_CMD_AFEX_UPDATE ;
 int ECORE_F_CMD_AFEX_VIFLISTS ;
 int ECORE_F_CMD_HW_INIT ;
 int ECORE_F_CMD_HW_RESET ;
 int ECORE_F_CMD_SET_TIMESYNC ;
 int ECORE_F_CMD_START ;
 int ECORE_F_CMD_STOP ;
 int ECORE_F_CMD_SWITCH_UPDATE ;
 int ECORE_F_CMD_TX_START ;
 int ECORE_F_CMD_TX_STOP ;

 int ECORE_F_STATE_MAX ;



 int ECORE_INVAL ;
 int ECORE_MSG (struct bxe_softc*,char*,int,int,...) ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_TEST_BIT (int,scalar_t__*) ;
 int RAMROD_DRV_CLR_ONLY ;

__attribute__((used)) static int ecore_func_chk_transition(struct bxe_softc *sc,
         struct ecore_func_sp_obj *o,
         struct ecore_func_state_params *params)
{
 enum ecore_func_state state = o->state, next_state = ECORE_F_STATE_MAX;
 enum ecore_func_cmd cmd = params->cmd;




 if (ECORE_TEST_BIT(RAMROD_DRV_CLR_ONLY, &params->ramrod_flags)) {
  o->pending = 0;
  o->next_state = ECORE_F_STATE_MAX;
 }




 if (o->pending)
  return ECORE_BUSY;

 switch (state) {
 case 130:
  if (cmd == ECORE_F_CMD_HW_INIT)
   next_state = 131;

  break;
 case 131:
  if (cmd == ECORE_F_CMD_START)
   next_state = 129;

  else if (cmd == ECORE_F_CMD_HW_RESET)
   next_state = 130;

  break;
 case 129:
  if (cmd == ECORE_F_CMD_STOP)
   next_state = 131;




  else if ((cmd == ECORE_F_CMD_AFEX_UPDATE) &&
    (!ECORE_TEST_BIT(ECORE_F_CMD_STOP, &o->pending)))
   next_state = 129;

  else if ((cmd == ECORE_F_CMD_AFEX_VIFLISTS) &&
    (!ECORE_TEST_BIT(ECORE_F_CMD_STOP, &o->pending)))
   next_state = 129;




  else if ((cmd == ECORE_F_CMD_SWITCH_UPDATE) &&
    (!ECORE_TEST_BIT(ECORE_F_CMD_STOP, &o->pending)))
   next_state = 129;

  else if ((cmd == ECORE_F_CMD_SET_TIMESYNC) &&
    (!ECORE_TEST_BIT(ECORE_F_CMD_STOP, &o->pending)))
   next_state = 129;

  else if (cmd == ECORE_F_CMD_TX_STOP)
   next_state = 128;

  break;
 case 128:
  if ((cmd == ECORE_F_CMD_SWITCH_UPDATE) &&
      (!ECORE_TEST_BIT(ECORE_F_CMD_STOP, &o->pending)))
   next_state = 128;

  else if ((cmd == ECORE_F_CMD_SET_TIMESYNC) &&
      (!ECORE_TEST_BIT(ECORE_F_CMD_STOP, &o->pending)))
   next_state = 128;

  else if (cmd == ECORE_F_CMD_TX_START)
   next_state = 129;

  break;
 default:
  ECORE_ERR("Unknown state: %d\n", state);
 }


 if (next_state != ECORE_F_STATE_MAX) {
  ECORE_MSG(sc, "Good function state transition: %d(%d)->%d\n",
     state, cmd, next_state);
  o->next_state = next_state;
  return ECORE_SUCCESS;
 }

 ECORE_MSG(sc, "Bad function state transition request: %d %d\n",
    state, cmd);

 return ECORE_INVAL;
}
