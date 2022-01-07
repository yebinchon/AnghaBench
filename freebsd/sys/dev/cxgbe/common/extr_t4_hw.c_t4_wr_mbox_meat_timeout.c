
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct port_tx_state {int dummy; } ;
struct fw_debug_cmd {int dummy; } ;
struct adapter {int flags; } ;
typedef int cmd_rpl ;
typedef int const __be64 ;


 int ARRAY_SIZE (int const*) ;
 int ASSERT_SYNCHRONIZED_OP (struct adapter*) ;
 int A_CIM_PF_MAILBOX_CTRL ;
 int A_CIM_PF_MAILBOX_DATA ;
 int A_CIM_VF_EXT_MAILBOX_CTRL ;
 int A_PCIE_FW ;
 int CHK_MBOX_ACCESS ;
 int CH_DUMP_MBOX (struct adapter*,int,int,char*,int const*,int) ;
 int CH_ERR (struct adapter*,char*,int const,int,int) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 scalar_t__ FW_DEBUG_CMD ;
 int FW_T4VF_MBDATA_BASE_ADDR ;
 int FW_T6VF_MBDATA_BASE_ADDR ;
 int F_MBMSGVALID ;
 int F_PCIE_FW_ERR ;
 scalar_t__ G_FW_CMD_OP (int) ;
 int G_FW_CMD_RETVAL (int) ;
 int G_MBOWNER (int) ;
 int IS_VF ;
 int MAX_NPORTS ;
 int MBOX_LEN ;
 int PF_REG (int,int ) ;
 int VF_CIM_REG (int ) ;
 int V_FW_CMD_RETVAL (int ) ;
 int V_MBOWNER (int) ;
 int X_CIM_PF_NOACCESS ;
 int X_MBOWNER_FW ;
 int X_MBOWNER_NONE ;
 int X_MBOWNER_PL ;
 int be64_to_cpu (int const) ;
 int check_tx_state (struct adapter*,struct port_tx_state*) ;
 int fw_asrt (struct adapter*,struct fw_debug_cmd*) ;
 int get_mbox_rpl (struct adapter*,int const*,int,int) ;
 scalar_t__ is_t6 (struct adapter*) ;
 int mdelay (int) ;
 int memcpy (void*,int const*,int) ;
 int memset (int const*,int ,int) ;
 int msleep (int) ;
 int read_tx_state (struct adapter*,struct port_tx_state*) ;
 int t4_fatal_err (struct adapter*,int) ;
 int t4_os_dump_devlog (struct adapter*) ;
 int t4_read_reg (struct adapter*,int) ;
 int t4_report_fw_error (struct adapter*) ;
 int t4_write_reg (struct adapter*,int,int) ;
 int t4_write_reg64 (struct adapter*,int,int) ;

int t4_wr_mbox_meat_timeout(struct adapter *adap, int mbox, const void *cmd,
       int size, void *rpl, bool sleep_ok, int timeout)
{





 static const int delay[] = {
  1, 1, 3, 5, 10, 10, 20, 50, 100
 };
 u32 v;
 u64 res;
 int i, ms, delay_idx, ret, next_tx_check;
 u32 data_reg = PF_REG(mbox, A_CIM_PF_MAILBOX_DATA);
 u32 ctl_reg = PF_REG(mbox, A_CIM_PF_MAILBOX_CTRL);
 u32 ctl;
 __be64 cmd_rpl[MBOX_LEN/8];
 u32 pcie_fw;
 struct port_tx_state tx_state[MAX_NPORTS];

 if (adap->flags & CHK_MBOX_ACCESS)
  ASSERT_SYNCHRONIZED_OP(adap);

 if (size <= 0 || (size & 15) || size > MBOX_LEN)
  return -EINVAL;

 if (adap->flags & IS_VF) {
  if (is_t6(adap))
   data_reg = FW_T6VF_MBDATA_BASE_ADDR;
  else
   data_reg = FW_T4VF_MBDATA_BASE_ADDR;
  ctl_reg = VF_CIM_REG(A_CIM_VF_EXT_MAILBOX_CTRL);
 }




 if (timeout < 0) {
  sleep_ok = 0;
  timeout = -timeout;
 }




 for (i = 0; i < 4; i++) {
  ctl = t4_read_reg(adap, ctl_reg);
  v = G_MBOWNER(ctl);
  if (v != X_MBOWNER_NONE)
   break;
 }




 if (v != X_MBOWNER_PL) {
  t4_report_fw_error(adap);
  ret = (v == X_MBOWNER_FW) ? -EBUSY : -ETIMEDOUT;
  return ret;
 }
 if (ctl & F_MBMSGVALID) {
  CH_DUMP_MBOX(adap, mbox, data_reg, "VLD", ((void*)0), 1);
 }




 memset(cmd_rpl, 0, sizeof(cmd_rpl));
 memcpy(cmd_rpl, cmd, size);
 CH_DUMP_MBOX(adap, mbox, 0, "cmd", cmd_rpl, 0);
 for (i = 0; i < ARRAY_SIZE(cmd_rpl); i++)
  t4_write_reg64(adap, data_reg + i * 8, be64_to_cpu(cmd_rpl[i]));

 if (adap->flags & IS_VF) {
  t4_read_reg(adap, data_reg);
 }

 t4_write_reg(adap, ctl_reg, F_MBMSGVALID | V_MBOWNER(X_MBOWNER_FW));
 read_tx_state(adap, &tx_state[0]);
 next_tx_check = 1000;
 delay_idx = 0;
 ms = delay[0];





 pcie_fw = 0;
 for (i = 0; i < timeout; i += ms) {
  if (!(adap->flags & IS_VF)) {
   pcie_fw = t4_read_reg(adap, A_PCIE_FW);
   if (pcie_fw & F_PCIE_FW_ERR)
    break;
  }

  if (i >= next_tx_check) {
   check_tx_state(adap, &tx_state[0]);
   next_tx_check = i + 1000;
  }

  if (sleep_ok) {
   ms = delay[delay_idx];
   if (delay_idx < ARRAY_SIZE(delay) - 1)
    delay_idx++;
   msleep(ms);
  } else {
   mdelay(ms);
  }

  v = t4_read_reg(adap, ctl_reg);
  if (v == X_CIM_PF_NOACCESS)
   continue;
  if (G_MBOWNER(v) == X_MBOWNER_PL) {
   if (!(v & F_MBMSGVALID)) {
    t4_write_reg(adap, ctl_reg,
          V_MBOWNER(X_MBOWNER_NONE));
    continue;
   }




   get_mbox_rpl(adap, cmd_rpl, MBOX_LEN/8, data_reg);
   CH_DUMP_MBOX(adap, mbox, 0, "rpl", cmd_rpl, 0);
   t4_write_reg(adap, ctl_reg, V_MBOWNER(X_MBOWNER_NONE));

   res = be64_to_cpu(cmd_rpl[0]);
   if (G_FW_CMD_OP(res >> 32) == FW_DEBUG_CMD) {
    fw_asrt(adap, (struct fw_debug_cmd *)cmd_rpl);
    res = V_FW_CMD_RETVAL(EIO);
   } else if (rpl)
    memcpy(rpl, cmd_rpl, size);
   return -G_FW_CMD_RETVAL((int)res);
  }
 }






 CH_ERR(adap, "command %#x in mbox %d timed out (0x%08x).\n",
     *(const u8 *)cmd, mbox, pcie_fw);
 CH_DUMP_MBOX(adap, mbox, 0, "cmdsent", cmd_rpl, 1);
 CH_DUMP_MBOX(adap, mbox, data_reg, "current", ((void*)0), 1);

 if (pcie_fw & F_PCIE_FW_ERR) {
  ret = -ENXIO;
  t4_report_fw_error(adap);
 } else {
  ret = -ETIMEDOUT;
  t4_os_dump_devlog(adap);
 }

 t4_fatal_err(adap, 1);
 return ret;
}
