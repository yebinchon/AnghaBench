
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int dummy; } ;


 int BUS_SPACE_RD4_MV0 (int ) ;
 int BUS_SPACE_WRT4_MV0 (int ,int) ;
 int MVIOP_MU_OUTBOUND_INT_MSG ;
 int MVIOP_MU_OUTBOUND_INT_POSTQUEUE ;
 int outbound_intmask ;

__attribute__((used)) static void hptiop_enable_intr_mv(struct hpt_iop_hba *hba)
{
 u_int32_t int_mask;

 int_mask = BUS_SPACE_RD4_MV0(outbound_intmask);

 int_mask |= MVIOP_MU_OUTBOUND_INT_POSTQUEUE
   | MVIOP_MU_OUTBOUND_INT_MSG;
     BUS_SPACE_WRT4_MV0(outbound_intmask,int_mask);
}
