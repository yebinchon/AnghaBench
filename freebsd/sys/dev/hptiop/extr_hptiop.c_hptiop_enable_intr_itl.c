
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpt_iop_hba {int dummy; } ;


 int BUS_SPACE_WRT4_ITL (int ,int) ;
 int IOPMU_OUTBOUND_INT_MSG0 ;
 int IOPMU_OUTBOUND_INT_POSTQUEUE ;
 int outbound_intmask ;

__attribute__((used)) static void hptiop_enable_intr_itl(struct hpt_iop_hba *hba)
{
 BUS_SPACE_WRT4_ITL(outbound_intmask,
  ~(IOPMU_OUTBOUND_INT_POSTQUEUE | IOPMU_OUTBOUND_INT_MSG0));
}
