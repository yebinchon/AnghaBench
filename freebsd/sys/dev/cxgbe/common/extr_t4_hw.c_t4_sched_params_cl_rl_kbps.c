
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int ch; int cl; int pktsize; void* max; int rate; int unit; int level; int type; int sc; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct fw_sched_cmd {TYPE_2__ u; void* retval_len16; void* op_to_write; } ;
struct adapter {int mbox; } ;
typedef int cmd ;


 unsigned int FW_LEN16 (struct fw_sched_cmd) ;
 int FW_SCHED_CMD ;
 int FW_SCHED_PARAMS_LEVEL_CL_RL ;
 int FW_SCHED_PARAMS_RATE_ABS ;
 int FW_SCHED_PARAMS_UNIT_BITRATE ;
 int FW_SCHED_SC_PARAMS ;
 int FW_SCHED_TYPE_PKTSCHED ;
 unsigned int F_FW_CMD_REQUEST ;
 unsigned int F_FW_CMD_WRITE ;
 unsigned int V_FW_CMD_OP (int ) ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (unsigned int) ;
 int memset (struct fw_sched_cmd*,int ,int) ;
 int t4_wr_mbox_meat (struct adapter*,int ,struct fw_sched_cmd*,int,int *,int) ;

int t4_sched_params_cl_rl_kbps(struct adapter *adapter, int channel, int cl,
    int mode, unsigned int maxrate, int pktsize, int sleep_ok)
{
 struct fw_sched_cmd cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_write = cpu_to_be32(V_FW_CMD_OP(FW_SCHED_CMD) |
          F_FW_CMD_REQUEST |
          F_FW_CMD_WRITE);
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));

 cmd.u.params.sc = FW_SCHED_SC_PARAMS;
 cmd.u.params.type = FW_SCHED_TYPE_PKTSCHED;
 cmd.u.params.level = FW_SCHED_PARAMS_LEVEL_CL_RL;
 cmd.u.params.mode = mode;
 cmd.u.params.ch = channel;
 cmd.u.params.cl = cl;
 cmd.u.params.unit = FW_SCHED_PARAMS_UNIT_BITRATE;
 cmd.u.params.rate = FW_SCHED_PARAMS_RATE_ABS;
 cmd.u.params.max = cpu_to_be32(maxrate);
 cmd.u.params.pktsize = cpu_to_be16(pktsize);

 return t4_wr_mbox_meat(adapter,adapter->mbox, &cmd, sizeof(cmd),
          ((void*)0), sleep_ok);
}
