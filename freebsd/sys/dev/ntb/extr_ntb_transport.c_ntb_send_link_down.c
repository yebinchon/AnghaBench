
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int tx_lock; int tx_free_q; int ntb_tx_free_q_lock; int link_is_up; } ;
struct ntb_queue_entry {int flags; scalar_t__ len; int * buf; int * cb_data; } ;


 int NTBT_LINK_DOWN_FLAG ;
 int NTB_LINK_DOWN_TIMEOUT ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct ntb_queue_entry* ntb_list_rm (int *,int *) ;
 int ntb_process_tx (struct ntb_transport_qp*,struct ntb_queue_entry*) ;
 int ntb_qp_link_down_reset (struct ntb_transport_qp*) ;
 int pause (char*,int) ;
 int printf (char*) ;

__attribute__((used)) static void
ntb_send_link_down(struct ntb_transport_qp *qp)
{
 struct ntb_queue_entry *entry;
 int i, rc;

 if (!qp->link_is_up)
  return;

 for (i = 0; i < NTB_LINK_DOWN_TIMEOUT; i++) {
  entry = ntb_list_rm(&qp->ntb_tx_free_q_lock, &qp->tx_free_q);
  if (entry != ((void*)0))
   break;
  pause("NTB Wait for link down", hz / 10);
 }

 if (entry == ((void*)0))
  return;

 entry->cb_data = ((void*)0);
 entry->buf = ((void*)0);
 entry->len = 0;
 entry->flags = NTBT_LINK_DOWN_FLAG;

 mtx_lock(&qp->tx_lock);
 rc = ntb_process_tx(qp, entry);
 mtx_unlock(&qp->tx_lock);
 if (rc != 0)
  printf("ntb: Failed to send link down\n");

 ntb_qp_link_down_reset(qp);
}
