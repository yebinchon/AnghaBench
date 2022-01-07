
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int dummy; } ;


 int BUS_SPACE_RD4_ITL (int ) ;
 int BUS_SPACE_WRT4_ITL (int ,int ) ;
 int inbound_msgaddr0 ;
 int outbound_intstatus ;

__attribute__((used)) static void hptiop_post_msg_itl(struct hpt_iop_hba *hba, u_int32_t msg)
{
 BUS_SPACE_WRT4_ITL(inbound_msgaddr0, msg);
 BUS_SPACE_RD4_ITL(outbound_intstatus);
}
