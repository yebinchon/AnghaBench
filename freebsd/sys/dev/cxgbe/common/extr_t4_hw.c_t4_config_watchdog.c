
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_watchdog_cmd {void* action; void* timeout; void* retval_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;


 unsigned int FW_LEN16 (struct fw_watchdog_cmd) ;
 int FW_WATCHDOG_CMD ;
 unsigned int F_FW_CMD_REQUEST ;
 unsigned int F_FW_CMD_WRITE ;
 unsigned int V_FW_CMD_OP (int ) ;
 unsigned int V_FW_PARAMS_CMD_PFN (unsigned int) ;
 unsigned int V_FW_PARAMS_CMD_VFN (unsigned int) ;
 void* cpu_to_be32 (unsigned int) ;
 int memset (struct fw_watchdog_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_watchdog_cmd*,int,int *) ;

int t4_config_watchdog(struct adapter *adapter, unsigned int mbox,
         unsigned int pf, unsigned int vf,
         unsigned int timeout, unsigned int action)
{
 struct fw_watchdog_cmd wdog;
 unsigned int ticks;







 ticks = (timeout + 5)/10;
 if (timeout && !ticks)
  ticks = 1;

 memset(&wdog, 0, sizeof wdog);
 wdog.op_to_vfn = cpu_to_be32(V_FW_CMD_OP(FW_WATCHDOG_CMD) |
         F_FW_CMD_REQUEST |
         F_FW_CMD_WRITE |
         V_FW_PARAMS_CMD_PFN(pf) |
         V_FW_PARAMS_CMD_VFN(vf));
 wdog.retval_len16 = cpu_to_be32(FW_LEN16(wdog));
 wdog.timeout = cpu_to_be32(ticks);
 wdog.action = cpu_to_be32(action);

 return t4_wr_mbox(adapter, mbox, &wdog, sizeof wdog, ((void*)0));
}
