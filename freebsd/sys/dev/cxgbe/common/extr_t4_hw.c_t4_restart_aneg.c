
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* rcap; } ;
struct TYPE_3__ {TYPE_2__ l1cfg; } ;
struct fw_port_cmd {TYPE_1__ u; void* action_to_len16; void* op_to_portid; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_LEN16 (struct fw_port_cmd) ;
 int FW_PORT_ACTION_L1_CFG ;
 int FW_PORT_CAP_ANEG ;
 int FW_PORT_CMD ;
 int F_FW_CMD_EXEC ;
 int F_FW_CMD_REQUEST ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_PORT_CMD_ACTION (int ) ;
 int V_FW_PORT_CMD_PORTID (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_port_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_port_cmd*,int,int *) ;

int t4_restart_aneg(struct adapter *adap, unsigned int mbox, unsigned int port)
{
 struct fw_port_cmd c;

 memset(&c, 0, sizeof(c));
 c.op_to_portid = cpu_to_be32(V_FW_CMD_OP(FW_PORT_CMD) |
         F_FW_CMD_REQUEST | F_FW_CMD_EXEC |
         V_FW_PORT_CMD_PORTID(port));
 c.action_to_len16 =
  cpu_to_be32(V_FW_PORT_CMD_ACTION(FW_PORT_ACTION_L1_CFG) |
       FW_LEN16(c));
 c.u.l1cfg.rcap = cpu_to_be32(FW_PORT_CAP_ANEG);
 return t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
}
