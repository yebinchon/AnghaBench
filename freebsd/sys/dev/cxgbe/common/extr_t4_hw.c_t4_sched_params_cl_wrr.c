
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ch; int cl; int weight; int level; int type; int sc; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct fw_sched_cmd {TYPE_2__ u; void* retval_len16; void* op_to_write; } ;
struct adapter {int mbox; } ;
typedef int cmd ;


 int EINVAL ;
 int FW_LEN16 (struct fw_sched_cmd) ;
 int FW_SCHED_CMD ;
 int FW_SCHED_PARAMS_LEVEL_CL_WRR ;
 int FW_SCHED_SC_PARAMS ;
 int FW_SCHED_TYPE_PKTSCHED ;
 int F_FW_CMD_REQUEST ;
 int F_FW_CMD_WRITE ;
 int V_FW_CMD_OP (int ) ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_sched_cmd*,int ,int) ;
 int t4_wr_mbox_meat (struct adapter*,int ,struct fw_sched_cmd*,int,int *,int) ;

int t4_sched_params_cl_wrr(struct adapter *adapter, int channel, int cl,
    int weight, int sleep_ok)
{
 struct fw_sched_cmd cmd;

 if (weight < 0 || weight > 100)
  return -EINVAL;

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_write = cpu_to_be32(V_FW_CMD_OP(FW_SCHED_CMD) |
          F_FW_CMD_REQUEST |
          F_FW_CMD_WRITE);
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));

 cmd.u.params.sc = FW_SCHED_SC_PARAMS;
 cmd.u.params.type = FW_SCHED_TYPE_PKTSCHED;
 cmd.u.params.level = FW_SCHED_PARAMS_LEVEL_CL_WRR;
 cmd.u.params.ch = channel;
 cmd.u.params.cl = cl;
 cmd.u.params.weight = cpu_to_be16(weight);

 return t4_wr_mbox_meat(adapter,adapter->mbox, &cmd, sizeof(cmd),
          ((void*)0), sleep_ok);
}
