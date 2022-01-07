
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int c_cpu; } ;
struct sge_txq {scalar_t__ size; scalar_t__ in_use; TYPE_2__ txq_timer; scalar_t__ db_pending; } ;
struct sge_qset {int qs_flags; struct port_info* port; struct sge_txq* txq; } ;
struct TYPE_4__ {scalar_t__ link_ok; } ;
struct port_info {TYPE_1__ link_config; int adapter; struct ifnet* ifp; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int QS_FLUSHING ;
 int QS_TIMEOUT ;
 size_t TXQ_ETH ;
 int TXQ_LOCK_ASSERT (struct sge_qset*) ;
 int TXQ_RING_EMPTY (struct sge_qset*) ;
 int TXQ_RING_FLUSH (struct sge_qset*) ;
 scalar_t__ TX_MAX_DESC ;
 scalar_t__ callout_pending (TYPE_2__*) ;
 int callout_reset_on (TYPE_2__*,int,int ,struct sge_qset*,int ) ;
 int check_ring_tx_db (int ,struct sge_txq*,int) ;
 struct mbuf* cxgb_dequeue (struct sge_qset*) ;
 int cxgb_tx_reclaim_threshold ;
 int cxgb_tx_timeout ;
 int m_freem (struct mbuf*) ;
 int reclaim_completed_tx (struct sge_qset*,int ,size_t) ;
 scalar_t__ t3_encap (struct sge_qset*,struct mbuf**) ;

__attribute__((used)) static void
cxgb_start_locked(struct sge_qset *qs)
{
 struct mbuf *m_head = ((void*)0);
 struct sge_txq *txq = &qs->txq[TXQ_ETH];
 struct port_info *pi = qs->port;
 struct ifnet *ifp = pi->ifp;

 if (qs->qs_flags & (QS_FLUSHING|QS_TIMEOUT))
  reclaim_completed_tx(qs, 0, TXQ_ETH);

 if (!pi->link_config.link_ok) {
  TXQ_RING_FLUSH(qs);
  return;
 }
 TXQ_LOCK_ASSERT(qs);
 while (!TXQ_RING_EMPTY(qs) && (ifp->if_drv_flags & IFF_DRV_RUNNING) &&
     pi->link_config.link_ok) {
  reclaim_completed_tx(qs, cxgb_tx_reclaim_threshold, TXQ_ETH);

  if (txq->size - txq->in_use <= TX_MAX_DESC)
   break;

  if ((m_head = cxgb_dequeue(qs)) == ((void*)0))
   break;




  if (t3_encap(qs, &m_head) || m_head == ((void*)0))
   break;

  m_head = ((void*)0);
 }

 if (txq->db_pending)
  check_ring_tx_db(pi->adapter, txq, 1);

 if (!TXQ_RING_EMPTY(qs) && callout_pending(&txq->txq_timer) == 0 &&
     pi->link_config.link_ok)
  callout_reset_on(&txq->txq_timer, 1, cxgb_tx_timeout,
      qs, txq->txq_timer.c_cpu);
 if (m_head != ((void*)0))
  m_freem(m_head);
}
