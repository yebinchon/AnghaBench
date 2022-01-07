
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct mbuf {int dummy; } ;
struct ifmp_ring {int size; TYPE_1__* cookie; } ;
typedef TYPE_1__* iflib_txq_t ;
struct TYPE_4__ {int ift_timer; int ift_qstatus; } ;


 int CALLOUT_LOCK (TYPE_1__*) ;
 int CALLOUT_UNLOCK (TYPE_1__*) ;
 int DBG_COUNTER_INC (int ) ;
 int IDXDIFF (int,int,int ) ;
 int IFLIB_QUEUE_IDLE ;
 int MPASS (int) ;
 scalar_t__ __predict_false (int) ;
 struct mbuf** _ring_peek_one (struct ifmp_ring*,int,int,int) ;
 int callout_stop (int *) ;
 scalar_t__ ifmp_ring_is_stalled (struct ifmp_ring*) ;
 int m_freem (struct mbuf*) ;
 int tx_frees ;

__attribute__((used)) static uint32_t
iflib_txq_drain_free(struct ifmp_ring *r, uint32_t cidx, uint32_t pidx)
{
 int i, avail;
 struct mbuf **mp;
 iflib_txq_t txq;

 txq = r->cookie;

 txq->ift_qstatus = IFLIB_QUEUE_IDLE;
 CALLOUT_LOCK(txq);
 callout_stop(&txq->ift_timer);
 CALLOUT_UNLOCK(txq);

 avail = IDXDIFF(pidx, cidx, r->size);
 for (i = 0; i < avail; i++) {
  mp = _ring_peek_one(r, cidx, i, avail - i);
  if (__predict_false(*mp == (struct mbuf *)txq))
   continue;
  m_freem(*mp);
  DBG_COUNTER_INC(tx_frees);
 }
 MPASS(ifmp_ring_is_stalled(r) == 0);
 return (avail);
}
