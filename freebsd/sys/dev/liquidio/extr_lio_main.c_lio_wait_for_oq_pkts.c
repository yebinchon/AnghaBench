
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oq; } ;
struct octeon_device {TYPE_2__** droq; TYPE_1__ io_qmask; } ;
struct TYPE_4__ {int droq_task; int droq_taskqueue; } ;


 int BIT_ULL (int) ;
 int LIO_MAX_OUTPUT_QUEUES (struct octeon_device*) ;
 int lio_droq_check_hw_for_pkts (TYPE_2__*) ;
 int lio_sleep_timeout (int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
lio_wait_for_oq_pkts(struct octeon_device *oct)
{
 int i, pending_pkts, pkt_cnt = 0, retry = 100;

 do {
  pending_pkts = 0;

  for (i = 0; i < LIO_MAX_OUTPUT_QUEUES(oct); i++) {
   if (!(oct->io_qmask.oq & BIT_ULL(i)))
    continue;

   pkt_cnt = lio_droq_check_hw_for_pkts(oct->droq[i]);
   if (pkt_cnt > 0) {
    pending_pkts += pkt_cnt;
    taskqueue_enqueue(oct->droq[i]->droq_taskqueue,
        &oct->droq[i]->droq_task);
   }
  }

  pkt_cnt = 0;
  lio_sleep_timeout(1);
 } while (retry-- && pending_pkts);

 return (pkt_cnt);
}
