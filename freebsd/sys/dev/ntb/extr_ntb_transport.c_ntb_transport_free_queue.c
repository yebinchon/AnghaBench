
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {unsigned long long qp_num; int tx_free_q; int ntb_tx_free_q_lock; int rx_post_q; int ntb_rx_q_lock; int rx_pend_q; int * event_handler; int * tx_handler; int * rx_handler; int * cb_data; int rxc_tq; int dev; int link_work; struct ntb_transport_ctx* transport; } ;
struct ntb_transport_ctx {int qp_bitmap; } ;
struct ntb_queue_entry {int dummy; } ;


 int M_NTB_T ;
 int callout_drain (int *) ;
 int free (struct ntb_queue_entry*,int ) ;
 int ntb_db_set_mask (int ,unsigned long long) ;
 struct ntb_queue_entry* ntb_list_rm (int *,int *) ;
 int taskqueue_drain_all (int ) ;
 int taskqueue_free (int ) ;

void
ntb_transport_free_queue(struct ntb_transport_qp *qp)
{
 struct ntb_transport_ctx *nt = qp->transport;
 struct ntb_queue_entry *entry;

 callout_drain(&qp->link_work);

 ntb_db_set_mask(qp->dev, 1ull << qp->qp_num);
 taskqueue_drain_all(qp->rxc_tq);
 taskqueue_free(qp->rxc_tq);

 qp->cb_data = ((void*)0);
 qp->rx_handler = ((void*)0);
 qp->tx_handler = ((void*)0);
 qp->event_handler = ((void*)0);

 while ((entry = ntb_list_rm(&qp->ntb_rx_q_lock, &qp->rx_pend_q)))
  free(entry, M_NTB_T);

 while ((entry = ntb_list_rm(&qp->ntb_rx_q_lock, &qp->rx_post_q)))
  free(entry, M_NTB_T);

 while ((entry = ntb_list_rm(&qp->ntb_tx_free_q_lock, &qp->tx_free_q)))
  free(entry, M_NTB_T);

 nt->qp_bitmap &= ~(1 << qp->qp_num);
}
