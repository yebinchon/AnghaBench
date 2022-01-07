
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hpt_iop_hba {int dummy; } ;


 int BUS_SPACE_RD4_ITL (int ) ;
 int BUS_SPACE_WRT4_ITL (int ,int) ;
 int DELAY (int) ;
 int IOPMU_QUEUE_EMPTY ;
 int inbound_queue ;
 int outbound_intstatus ;
 int outbound_queue ;

__attribute__((used)) static int hptiop_wait_ready_itl(struct hpt_iop_hba * hba, u_int32_t millisec)
{
 u_int32_t req=0;
 int i;

 for (i = 0; i < millisec; i++) {
  req = BUS_SPACE_RD4_ITL(inbound_queue);
  if (req != IOPMU_QUEUE_EMPTY)
   break;
  DELAY(1000);
 }

 if (req!=IOPMU_QUEUE_EMPTY) {
  BUS_SPACE_WRT4_ITL(outbound_queue, req);
  BUS_SPACE_RD4_ITL(outbound_intstatus);
  return 0;
 }

 return -1;
}
