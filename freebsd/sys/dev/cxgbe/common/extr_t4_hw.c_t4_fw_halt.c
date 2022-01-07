
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_reset_cmd {void* halt_pkd; void* val; } ;
struct adapter {int flags; } ;
typedef int c ;


 int A_CIM_BOOT_CFG ;
 int A_PCIE_FW ;
 int FW_OK ;
 int F_FW_RESET_CMD_HALT ;
 int F_PCIE_FW_HALT ;
 int F_PIORST ;
 int F_PIORSTMODE ;
 int F_UPCRST ;
 int INIT_CMD (struct fw_reset_cmd,int ,int ) ;
 unsigned int M_PCIE_FW_MASTER ;
 int RESET ;
 int WRITE ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_reset_cmd*,int ,int) ;
 int t4_set_reg_field (struct adapter*,int ,int ,int ) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_reset_cmd*,int,int *) ;

int t4_fw_halt(struct adapter *adap, unsigned int mbox, int force)
{
 int ret = 0;





 if (adap->flags & FW_OK && mbox <= M_PCIE_FW_MASTER) {
  struct fw_reset_cmd c;

  memset(&c, 0, sizeof(c));
  INIT_CMD(c, RESET, WRITE);
  c.val = cpu_to_be32(F_PIORST | F_PIORSTMODE);
  c.halt_pkd = cpu_to_be32(F_FW_RESET_CMD_HALT);
  ret = t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
 }
 if (ret == 0 || force) {
  t4_set_reg_field(adap, A_CIM_BOOT_CFG, F_UPCRST, F_UPCRST);
  t4_set_reg_field(adap, A_PCIE_FW, F_PCIE_FW_HALT,
     F_PCIE_FW_HALT);
 }





 return ret;
}
