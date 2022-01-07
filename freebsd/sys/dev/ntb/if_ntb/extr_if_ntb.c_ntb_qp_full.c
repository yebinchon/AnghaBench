
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_net_queue {int queue_full; int tx_task; int tx_tq; int qp; } ;


 int CTR0 (int ,char*) ;
 int KTR_NTB ;
 int SBT_1MS ;
 int callout_schedule_sbt (int *,int,int,int ) ;
 scalar_t__ ntb_transport_tx_free_entry (int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
ntb_qp_full(void *arg)
{
 struct ntb_net_queue *q = arg;

 CTR0(KTR_NTB, "TX: qp_full callout");
 if (ntb_transport_tx_free_entry(q->qp) > 0)
  taskqueue_enqueue(q->tx_tq, &q->tx_task);
 else
  callout_schedule_sbt(&q->queue_full,
      SBT_1MS / 4, SBT_1MS / 4, 0);
}
