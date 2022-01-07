
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_state_params {int cmd; } ;
struct ecore_queue_sp_obj {int pending; } ;
typedef enum ecore_queue_cmd { ____Placeholder_ecore_queue_cmd } ecore_queue_cmd ;


 int ECORE_Q_CMD_ACTIVATE ;
 int ECORE_Q_CMD_DEACTIVATE ;
 int ECORE_Q_CMD_UPDATE ;
 int ECORE_SET_BIT (int,int *) ;

__attribute__((used)) static int ecore_queue_set_pending(struct ecore_queue_sp_obj *obj,
       struct ecore_queue_state_params *params)
{
 enum ecore_queue_cmd cmd = params->cmd, bit;




 if ((cmd == ECORE_Q_CMD_ACTIVATE) ||
     (cmd == ECORE_Q_CMD_DEACTIVATE))
  bit = ECORE_Q_CMD_UPDATE;
 else
  bit = cmd;

 ECORE_SET_BIT(bit, &obj->pending);
 return bit;
}
