
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_transport_qp {int tx_max_frame; int tx_pkts; int tx_max_entry; int tx_index; int tx_free_q; int ntb_tx_free_q_lock; int cb_data; int (* tx_handler ) (struct ntb_transport_qp*,int ,int *,int ) ;int tx_ring_full; TYPE_1__* remote_rx_info; } ;
struct ntb_queue_entry {int len; int * buf; } ;
struct ntb_payload_header {int dummy; } ;
struct TYPE_2__ {int entry; } ;


 int CTR0 (int ,char*) ;
 int CTR1 (int ,char*,struct ntb_queue_entry*) ;
 int CTR2 (int ,char*,struct ntb_queue_entry*,int ) ;
 int CTR3 (int ,char*,int ,int ,int ) ;
 int EAGAIN ;
 int EIO ;
 int KTR_NTB ;
 int m_freem (int *) ;
 int ntb_async_tx (struct ntb_transport_qp*,struct ntb_queue_entry*) ;
 int ntb_list_add (int *,struct ntb_queue_entry*,int *) ;
 int stub1 (struct ntb_transport_qp*,int ,int *,int ) ;

__attribute__((used)) static int
ntb_process_tx(struct ntb_transport_qp *qp, struct ntb_queue_entry *entry)
{

 CTR3(KTR_NTB,
     "TX: process_tx: tx_pkts=%lu, tx_index=%u, remote entry=%u",
     qp->tx_pkts, qp->tx_index, qp->remote_rx_info->entry);
 if (qp->tx_index == qp->remote_rx_info->entry) {
  CTR0(KTR_NTB, "TX: ring full");
  qp->tx_ring_full++;
  return (EAGAIN);
 }

 if (entry->len > qp->tx_max_frame - sizeof(struct ntb_payload_header)) {
  if (qp->tx_handler != ((void*)0))
   qp->tx_handler(qp, qp->cb_data, entry->buf,
       EIO);
  else
   m_freem(entry->buf);

  entry->buf = ((void*)0);
  ntb_list_add(&qp->ntb_tx_free_q_lock, entry, &qp->tx_free_q);
  CTR1(KTR_NTB,
      "TX: frame too big. returning entry %p to tx_free_q",
      entry);
  return (0);
 }
 CTR2(KTR_NTB, "TX: copying entry %p to index %u", entry, qp->tx_index);
 ntb_async_tx(qp, entry);

 qp->tx_index++;
 qp->tx_index %= qp->tx_max_entry;

 qp->tx_pkts++;

 return (0);
}
