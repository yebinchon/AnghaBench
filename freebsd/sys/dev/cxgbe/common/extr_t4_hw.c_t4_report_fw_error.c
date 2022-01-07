
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int flags; } ;


 int A_PCIE_FW ;
 int CH_ERR (struct adapter*,char*,char const* const,int) ;
 int FW_OK ;
 int F_PCIE_FW_ERR ;
 size_t G_PCIE_FW_EVAL (int) ;
 int t4_os_dump_devlog (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static void t4_report_fw_error(struct adapter *adap)
{
 static const char *const reason[] = {
  "Crash",
  "During Device Preparation",
  "During Device Configuration",
  "During Device Initialization",
  "Unexpected Event",
  "Insufficient Airflow",
  "Device Shutdown",
  "Reserved",
 };
 u32 pcie_fw;

 pcie_fw = t4_read_reg(adap, A_PCIE_FW);
 if (pcie_fw & F_PCIE_FW_ERR) {
  adap->flags &= ~FW_OK;
  CH_ERR(adap, "firmware reports adapter error: %s (0x%08x)\n",
      reason[G_PCIE_FW_EVAL(pcie_fw)], pcie_fw);
  if (pcie_fw != 0xffffffff)
   t4_os_dump_devlog(adap);
 }
}
