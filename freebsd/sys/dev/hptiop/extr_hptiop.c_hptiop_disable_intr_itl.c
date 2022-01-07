
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int dummy; } ;


 int BUS_SPACE_RD4_ITL (int ) ;
 int BUS_SPACE_WRT4_ITL (int ,int) ;
 int IOPMU_OUTBOUND_INT_MSG0 ;
 int IOPMU_OUTBOUND_INT_POSTQUEUE ;
 int outbound_intmask ;
 int outbound_intstatus ;

__attribute__((used)) static void hptiop_disable_intr_itl(struct hpt_iop_hba *hba)
{
 u_int32_t int_mask;

 int_mask = BUS_SPACE_RD4_ITL(outbound_intmask);

 int_mask |= IOPMU_OUTBOUND_INT_POSTQUEUE | IOPMU_OUTBOUND_INT_MSG0;
 BUS_SPACE_WRT4_ITL(outbound_intmask, int_mask);
 BUS_SPACE_RD4_ITL(outbound_intstatus);
}
