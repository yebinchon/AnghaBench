
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_hello_cmd {int err_to_clearinit; } ;
struct adapter {int dummy; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;
typedef enum dev_master { ____Placeholder_dev_master } dev_master ;
typedef int c ;


 int A_PCIE_FW ;
 int DEV_STATE_ERR ;
 int DEV_STATE_INIT ;
 int DEV_STATE_UNINIT ;
 int EBUSY ;
 int ETIMEDOUT ;
 int FW_CMD_HELLO_RETRIES ;
 int FW_CMD_HELLO_TIMEOUT ;
 int FW_HELLO_CMD_STAGE_OS ;
 int FW_SUCCESS ;
 int F_FW_HELLO_CMD_CLEARINIT ;
 int F_FW_HELLO_CMD_ERR ;
 int F_FW_HELLO_CMD_INIT ;
 int F_PCIE_FW_ERR ;
 int F_PCIE_FW_INIT ;
 int F_PCIE_FW_MASTER_VLD ;
 unsigned int G_FW_HELLO_CMD_MBMASTER (int) ;
 unsigned int G_PCIE_FW_MASTER (int) ;
 int HELLO ;
 int INIT_CMD (struct fw_hello_cmd,int ,int ) ;
 int MASTER_CANT ;
 int MASTER_MUST ;
 unsigned int M_FW_HELLO_CMD_MBMASTER ;
 unsigned int M_PCIE_FW_MASTER ;
 int V_FW_HELLO_CMD_MASTERDIS (int) ;
 int V_FW_HELLO_CMD_MASTERFORCE (int) ;
 int V_FW_HELLO_CMD_MBASYNCNOT (unsigned int) ;
 int V_FW_HELLO_CMD_MBMASTER (unsigned int) ;
 int V_FW_HELLO_CMD_STAGE (int ) ;
 int WRITE ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int memset (struct fw_hello_cmd*,int ,int) ;
 int msleep (int) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_report_fw_error (struct adapter*) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_hello_cmd*,int,struct fw_hello_cmd*) ;

int t4_fw_hello(struct adapter *adap, unsigned int mbox, unsigned int evt_mbox,
  enum dev_master master, enum dev_state *state)
{
 int ret;
 struct fw_hello_cmd c;
 u32 v;
 unsigned int master_mbox;
 int retries = FW_CMD_HELLO_RETRIES;

retry:
 memset(&c, 0, sizeof(c));
 INIT_CMD(c, HELLO, WRITE);
 c.err_to_clearinit = cpu_to_be32(
  V_FW_HELLO_CMD_MASTERDIS(master == MASTER_CANT) |
  V_FW_HELLO_CMD_MASTERFORCE(master == MASTER_MUST) |
  V_FW_HELLO_CMD_MBMASTER(master == MASTER_MUST ?
     mbox : M_FW_HELLO_CMD_MBMASTER) |
  V_FW_HELLO_CMD_MBASYNCNOT(evt_mbox) |
  V_FW_HELLO_CMD_STAGE(FW_HELLO_CMD_STAGE_OS) |
  F_FW_HELLO_CMD_CLEARINIT);
 ret = t4_wr_mbox(adap, mbox, &c, sizeof(c), &c);
 if (ret != FW_SUCCESS) {
  if ((ret == -EBUSY || ret == -ETIMEDOUT) && retries-- > 0)
   goto retry;
  if (t4_read_reg(adap, A_PCIE_FW) & F_PCIE_FW_ERR)
   t4_report_fw_error(adap);
  return ret;
 }

 v = be32_to_cpu(c.err_to_clearinit);
 master_mbox = G_FW_HELLO_CMD_MBMASTER(v);
 if (state) {
  if (v & F_FW_HELLO_CMD_ERR)
   *state = DEV_STATE_ERR;
  else if (v & F_FW_HELLO_CMD_INIT)
   *state = DEV_STATE_INIT;
  else
   *state = DEV_STATE_UNINIT;
 }
 if ((v & (F_FW_HELLO_CMD_ERR|F_FW_HELLO_CMD_INIT)) == 0 &&
     master_mbox != mbox) {
  int waiting = FW_CMD_HELLO_TIMEOUT;
  for (;;) {
   u32 pcie_fw;

   msleep(50);
   waiting -= 50;







   pcie_fw = t4_read_reg(adap, A_PCIE_FW);
   if (!(pcie_fw & (F_PCIE_FW_ERR|F_PCIE_FW_INIT))) {
    if (waiting <= 0) {
     if (retries-- > 0)
      goto retry;

     return -ETIMEDOUT;
    }
    continue;
   }





   if (state) {
    if (pcie_fw & F_PCIE_FW_ERR)
     *state = DEV_STATE_ERR;
    else if (pcie_fw & F_PCIE_FW_INIT)
     *state = DEV_STATE_INIT;
   }






   if (master_mbox == M_PCIE_FW_MASTER &&
       (pcie_fw & F_PCIE_FW_MASTER_VLD))
    master_mbox = G_PCIE_FW_MASTER(pcie_fw);
   break;
  }
 }

 return master_mbox;
}
