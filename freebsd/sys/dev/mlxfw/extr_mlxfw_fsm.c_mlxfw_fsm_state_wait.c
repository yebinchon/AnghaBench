
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxfw_dev {TYPE_1__* ops; } ;
typedef enum mlxfw_fsm_state_err { ____Placeholder_mlxfw_fsm_state_err } mlxfw_fsm_state_err ;
typedef enum mlxfw_fsm_state { ____Placeholder_mlxfw_fsm_state } mlxfw_fsm_state ;
struct TYPE_2__ {int (* fsm_query_state ) (struct mlxfw_dev*,int ,int*,int*) ;} ;


 int EINVAL ;
 int ETIMEDOUT ;
 int MLXFW_FSM_STATE_ERR_OK ;
 int MLXFW_FSM_STATE_WAIT_CYCLE_MS ;
 int MLXFW_FSM_STATE_WAIT_ROUNDS ;
 int * mlxfw_fsm_state_err_str ;
 int msleep (int ) ;
 int pr_err (char*,...) ;
 int stub1 (struct mlxfw_dev*,int ,int*,int*) ;

__attribute__((used)) static int mlxfw_fsm_state_wait(struct mlxfw_dev *mlxfw_dev, u32 fwhandle,
    enum mlxfw_fsm_state fsm_state)
{
 enum mlxfw_fsm_state_err fsm_state_err;
 enum mlxfw_fsm_state curr_fsm_state;
 int times;
 int err;

 times = MLXFW_FSM_STATE_WAIT_ROUNDS;
retry:
 err = mlxfw_dev->ops->fsm_query_state(mlxfw_dev, fwhandle,
           &curr_fsm_state, &fsm_state_err);
 if (err)
  return err;

 if (fsm_state_err != MLXFW_FSM_STATE_ERR_OK) {
  pr_err("Firmware flash failed: %s\n",
         mlxfw_fsm_state_err_str[fsm_state_err]);
  return -EINVAL;
 }
 if (curr_fsm_state != fsm_state) {
  if (--times == 0) {
   pr_err("Timeout reached on FSM state change");
   return -ETIMEDOUT;
  }
  msleep(MLXFW_FSM_STATE_WAIT_CYCLE_MS);
  goto retry;
 }
 return 0;
}
