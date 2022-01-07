
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ntb_transport_qp {int ntb_rx_q_lock; int cb_data; int (* rx_handler ) (struct ntb_transport_qp*,int ,struct mbuf*,unsigned int) ;scalar_t__ client_ready; int rx_pend_q; int rx_post_q; TYPE_2__* rx_info; } ;
struct ntb_queue_entry {int flags; unsigned int len; int cb_data; struct mbuf* buf; int index; TYPE_1__* x_hdr; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {int entry; } ;
struct TYPE_3__ {scalar_t__ flags; } ;


 int CTR0 (int ,char*) ;
 int CTR2 (int ,char*,struct ntb_queue_entry*,struct mbuf*) ;
 int KTR_NTB ;
 int NTBT_DESC_DONE_FLAG ;
 int STAILQ_EMPTY (int *) ;
 struct ntb_queue_entry* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct ntb_queue_entry*,struct ntb_queue_entry*) ;
 int STAILQ_REMOVE_HEAD (int *,struct ntb_queue_entry*) ;
 int iowrite32 (int ,int *) ;
 int m_freem (struct mbuf*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int stub1 (struct ntb_transport_qp*,int ,struct mbuf*,unsigned int) ;
 unsigned int transport_mtu ;

__attribute__((used)) static void
ntb_complete_rxc(struct ntb_transport_qp *qp)
{
 struct ntb_queue_entry *entry;
 struct mbuf *m;
 unsigned len;

 CTR0(KTR_NTB, "RX: rx_completion_task");

 mtx_lock_spin(&qp->ntb_rx_q_lock);

 while (!STAILQ_EMPTY(&qp->rx_post_q)) {
  entry = STAILQ_FIRST(&qp->rx_post_q);
  if ((entry->flags & NTBT_DESC_DONE_FLAG) == 0)
   break;

  entry->x_hdr->flags = 0;
  iowrite32(entry->index, &qp->rx_info->entry);

  STAILQ_REMOVE_HEAD(&qp->rx_post_q, entry);

  len = entry->len;
  m = entry->buf;





  entry->buf = ((void*)0);
  entry->len = transport_mtu;
  entry->cb_data = qp->cb_data;

  STAILQ_INSERT_TAIL(&qp->rx_pend_q, entry, entry);

  mtx_unlock_spin(&qp->ntb_rx_q_lock);

  CTR2(KTR_NTB, "RX: completing entry %p, mbuf %p", entry, m);
  if (qp->rx_handler != ((void*)0) && qp->client_ready)
   qp->rx_handler(qp, qp->cb_data, m, len);
  else
   m_freem(m);

  mtx_lock_spin(&qp->ntb_rx_q_lock);
 }

 mtx_unlock_spin(&qp->ntb_rx_q_lock);
}
