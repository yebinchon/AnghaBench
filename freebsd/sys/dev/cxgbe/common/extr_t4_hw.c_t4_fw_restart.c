
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_CIM_BOOT_CFG ;
 int A_PCIE_FW ;
 int ETIMEDOUT ;
 int FW_CMD_MAX_TIMEOUT ;
 int FW_SUCCESS ;
 int F_PCIE_FW_HALT ;
 int F_UPCRST ;
 int msleep (int) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_set_reg_field (struct adapter*,int ,int ,int ) ;

int t4_fw_restart(struct adapter *adap, unsigned int mbox)
{
 int ms;

 t4_set_reg_field(adap, A_CIM_BOOT_CFG, F_UPCRST, 0);
 for (ms = 0; ms < FW_CMD_MAX_TIMEOUT; ) {
  if (!(t4_read_reg(adap, A_PCIE_FW) & F_PCIE_FW_HALT))
   return FW_SUCCESS;
  msleep(100);
  ms += 100;
 }

 return -ETIMEDOUT;
}
