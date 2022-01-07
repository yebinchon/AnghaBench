
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int dummy; } ;


 int BUS_SPACE_RD4_MV0 (int ) ;
 int BUS_SPACE_WRT4_MV0 (int ,int ) ;
 int BUS_SPACE_WRT4_MV2 (int ,int ) ;
 int MVIOP_MU_INBOUND_INT_MSG ;
 int inbound_doorbell ;
 int inbound_msg ;
 int outbound_intmask ;

__attribute__((used)) static void hptiop_post_msg_mv(struct hpt_iop_hba *hba, u_int32_t msg)
{

 BUS_SPACE_WRT4_MV2(inbound_msg, msg);
 BUS_SPACE_WRT4_MV0(inbound_doorbell, MVIOP_MU_INBOUND_INT_MSG);

 BUS_SPACE_RD4_MV0(outbound_intmask);
}
