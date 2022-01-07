
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int tx_free_q; int ntb_tx_free_q_lock; int tx_lock; int tx_err_no_buf; int link_is_up; } ;
struct ntb_queue_entry {unsigned int len; scalar_t__ flags; void* buf; void* cb_data; } ;


 int CTR0 (int ,char*) ;
 int CTR1 (int ,char*,struct ntb_queue_entry*) ;
 int EBUSY ;
 int EINVAL ;
 int KTR_NTB ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ntb_list_add (int *,struct ntb_queue_entry*,int *) ;
 struct ntb_queue_entry* ntb_list_rm (int *,int *) ;
 int ntb_process_tx (struct ntb_transport_qp*,struct ntb_queue_entry*) ;

int
ntb_transport_tx_enqueue(struct ntb_transport_qp *qp, void *cb, void *data,
    unsigned int len)
{
 struct ntb_queue_entry *entry;
 int rc;

 if (!qp->link_is_up || len == 0) {
  CTR0(KTR_NTB, "TX: link not up");
  return (EINVAL);
 }

 entry = ntb_list_rm(&qp->ntb_tx_free_q_lock, &qp->tx_free_q);
 if (entry == ((void*)0)) {
  CTR0(KTR_NTB, "TX: could not get entry from tx_free_q");
  qp->tx_err_no_buf++;
  return (EBUSY);
 }
 CTR1(KTR_NTB, "TX: got entry %p from tx_free_q", entry);

 entry->cb_data = cb;
 entry->buf = data;
 entry->len = len;
 entry->flags = 0;

 mtx_lock(&qp->tx_lock);
 rc = ntb_process_tx(qp, entry);
 mtx_unlock(&qp->tx_lock);
 if (rc != 0) {
  ntb_list_add(&qp->ntb_tx_free_q_lock, entry, &qp->tx_free_q);
  CTR1(KTR_NTB,
      "TX: process_tx failed. Returning entry %p to tx_free_q",
      entry);
 }
 return (rc);
}
