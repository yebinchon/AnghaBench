
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_devlog_cmd {unsigned int level; void* retval_len16; void* op_to_write; } ;
struct adapter {int mbox; } ;
typedef int devlog_cmd ;


 int FW_DEVLOG_CMD ;
 int FW_LEN16 (struct fw_devlog_cmd) ;
 int F_FW_CMD_REQUEST ;
 int F_FW_CMD_WRITE ;
 int V_FW_CMD_OP (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_devlog_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_devlog_cmd*,int,struct fw_devlog_cmd*) ;

int t4_set_devlog_level(struct adapter *adapter, unsigned int level)
{
 struct fw_devlog_cmd devlog_cmd;

 memset(&devlog_cmd, 0, sizeof(devlog_cmd));
 devlog_cmd.op_to_write = cpu_to_be32(V_FW_CMD_OP(FW_DEVLOG_CMD) |
          F_FW_CMD_REQUEST |
          F_FW_CMD_WRITE);
 devlog_cmd.level = level;
 devlog_cmd.retval_len16 = cpu_to_be32(FW_LEN16(devlog_cmd));
 return t4_wr_mbox(adapter, adapter->mbox, &devlog_cmd,
     sizeof(devlog_cmd), &devlog_cmd);
}
