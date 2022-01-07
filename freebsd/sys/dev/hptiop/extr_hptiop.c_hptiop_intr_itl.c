
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
 int KdPrint (char*) ;
 int hptiop_drain_outbound_queue_itl (struct hpt_iop_hba*) ;
 int hptiop_os_message_callback (struct hpt_iop_hba*,int) ;
 int outbound_intstatus ;
 int outbound_msgaddr0 ;

__attribute__((used)) static int hptiop_intr_itl(struct hpt_iop_hba * hba)
{
 u_int32_t status;
 int ret = 0;

 status = BUS_SPACE_RD4_ITL(outbound_intstatus);

 if (status & IOPMU_OUTBOUND_INT_MSG0) {
  u_int32_t msg = BUS_SPACE_RD4_ITL(outbound_msgaddr0);
  KdPrint(("hptiop: received outbound msg %x\n", msg));
  BUS_SPACE_WRT4_ITL(outbound_intstatus, IOPMU_OUTBOUND_INT_MSG0);
  hptiop_os_message_callback(hba, msg);
  ret = 1;
 }

 if (status & IOPMU_OUTBOUND_INT_POSTQUEUE) {
  hptiop_drain_outbound_queue_itl(hba);
  ret = 1;
 }

 return ret;
}
