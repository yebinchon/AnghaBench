
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpt_iop_hba {int dummy; } ;


 int BUS_SPACE_RD4_MVFREY2 (int ) ;
 int BUS_SPACE_WRT4_MVFREY2 (int ,int) ;
 int CPU_TO_F0_DRBL_MSG_A_BIT ;
 int f0_doorbell_enable ;
 int isr_enable ;
 int pcie_f0_int_enable ;

__attribute__((used)) static void hptiop_enable_intr_mvfrey(struct hpt_iop_hba *hba)
{
 BUS_SPACE_WRT4_MVFREY2(f0_doorbell_enable, CPU_TO_F0_DRBL_MSG_A_BIT);
 BUS_SPACE_RD4_MVFREY2(f0_doorbell_enable);

 BUS_SPACE_WRT4_MVFREY2(isr_enable, 0x1);
 BUS_SPACE_RD4_MVFREY2(isr_enable);

 BUS_SPACE_WRT4_MVFREY2(pcie_f0_int_enable, 0x1010);
 BUS_SPACE_RD4_MVFREY2(pcie_f0_int_enable);
}
