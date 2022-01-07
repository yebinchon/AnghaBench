
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_2__ {int oq; } ;
struct octeon_device {int int_status; struct lio_droq** droq; TYPE_1__ io_qmask; } ;
struct lio_droq {int droq_task; int droq_taskqueue; } ;


 int BIT_ULL (size_t) ;
 int LIO_DEV_INTR_PKT_DATA ;
 size_t LIO_MAX_OUTPUT_QUEUES (struct octeon_device*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
lio_schedule_droq_pkt_handlers(struct octeon_device *oct)
{
 struct lio_droq *droq;
 uint64_t oq_no;

 if (oct->int_status & LIO_DEV_INTR_PKT_DATA) {
  for (oq_no = 0; oq_no < LIO_MAX_OUTPUT_QUEUES(oct); oq_no++) {
   if (!(oct->io_qmask.oq & BIT_ULL(oq_no)))
    continue;

   droq = oct->droq[oq_no];

   taskqueue_enqueue(droq->droq_taskqueue,
       &droq->droq_task);
  }
 }
}
