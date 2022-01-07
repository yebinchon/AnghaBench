
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int dummy; } ;


 int BUS_SPACE_RD4_MV0 (int ) ;
 int BUS_SPACE_RD4_MV2 (int ) ;
 int BUS_SPACE_WRT4_MV0 (int ,int) ;
 int KdPrint (char*) ;
 int MVIOP_MU_OUTBOUND_INT_MSG ;
 int MVIOP_MU_OUTBOUND_INT_POSTQUEUE ;
 int hptiop_drain_outbound_queue_mv (struct hpt_iop_hba*) ;
 int hptiop_os_message_callback (struct hpt_iop_hba*,int) ;
 int outbound_doorbell ;
 int outbound_msg ;

__attribute__((used)) static int hptiop_intr_mv(struct hpt_iop_hba * hba)
{
 u_int32_t status;
 int ret = 0;

 status = BUS_SPACE_RD4_MV0(outbound_doorbell);

 if (status)
  BUS_SPACE_WRT4_MV0(outbound_doorbell, ~status);

 if (status & MVIOP_MU_OUTBOUND_INT_MSG) {
  u_int32_t msg = BUS_SPACE_RD4_MV2(outbound_msg);
  KdPrint(("hptiop: received outbound msg %x\n", msg));
  hptiop_os_message_callback(hba, msg);
  ret = 1;
 }

 if (status & MVIOP_MU_OUTBOUND_INT_POSTQUEUE) {
  hptiop_drain_outbound_queue_mv(hba);
  ret = 1;
 }

 return ret;
}
