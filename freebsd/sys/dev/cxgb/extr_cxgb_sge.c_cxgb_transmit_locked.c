
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int c_cpu; } ;
struct sge_txq {int size; int in_use; TYPE_3__ txq_timer; int txq_direct_bytes; int txq_direct_packets; scalar_t__ db_pending; struct buf_ring* txq_mr; } ;
struct sge_qset {struct sge_txq* txq; struct port_info* port; } ;
struct TYPE_6__ {scalar_t__ link_ok; } ;
struct port_info {TYPE_2__ link_config; int adapter; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
struct buf_ring {int dummy; } ;


 size_t TXQ_ETH ;
 int TXQ_LOCK_ASSERT (struct sge_qset*) ;
 int TXQ_RING_EMPTY (struct sge_qset*) ;
 int TXQ_RING_NEEDS_ENQUEUE (struct sge_qset*) ;
 int TX_MAX_DESC ;
 int callout_pending (TYPE_3__*) ;
 int callout_reset_on (TYPE_3__*,int,int ,struct sge_qset*,int ) ;
 scalar_t__ check_pkt_coalesce (struct sge_qset*) ;
 int check_ring_tx_db (int ,struct sge_txq*,int) ;
 int cxgb_start_locked (struct sge_qset*) ;
 int cxgb_tx_reclaim_threshold ;
 int cxgb_tx_timeout ;
 int drbr_enqueue (struct ifnet*,struct buf_ring*,struct mbuf*) ;
 int drbr_inuse (struct ifnet*,struct buf_ring*) ;
 int reclaim_completed_tx (struct sge_qset*,int ,size_t) ;
 scalar_t__ t3_encap (struct sge_qset*,struct mbuf**) ;

__attribute__((used)) static int
cxgb_transmit_locked(struct ifnet *ifp, struct sge_qset *qs, struct mbuf *m)
{
 struct port_info *pi = qs->port;
 struct sge_txq *txq = &qs->txq[TXQ_ETH];
 struct buf_ring *br = txq->txq_mr;
 int error, avail;

 avail = txq->size - txq->in_use;
 TXQ_LOCK_ASSERT(qs);
 if (check_pkt_coalesce(qs) == 0 &&
     !TXQ_RING_NEEDS_ENQUEUE(qs) && avail > TX_MAX_DESC) {
  if (t3_encap(qs, &m)) {
   if (m != ((void*)0) &&
       (error = drbr_enqueue(ifp, br, m)) != 0)
    return (error);
  } else {
   if (txq->db_pending)
    check_ring_tx_db(pi->adapter, txq, 1);





   txq->txq_direct_packets++;
   txq->txq_direct_bytes += m->m_pkthdr.len;
  }
 } else if ((error = drbr_enqueue(ifp, br, m)) != 0)
  return (error);

 reclaim_completed_tx(qs, cxgb_tx_reclaim_threshold, TXQ_ETH);
 if (!TXQ_RING_EMPTY(qs) && pi->link_config.link_ok &&
     (!check_pkt_coalesce(qs) || (drbr_inuse(ifp, br) >= 7)))
  cxgb_start_locked(qs);
 else if (!TXQ_RING_EMPTY(qs) && !callout_pending(&txq->txq_timer))
  callout_reset_on(&txq->txq_timer, 1, cxgb_tx_timeout,
      qs, txq->txq_timer.c_cpu);
 return (0);
}
