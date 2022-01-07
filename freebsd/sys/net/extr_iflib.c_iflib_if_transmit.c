
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct mbuf {struct mbuf* m_nextpkt; } ;
typedef TYPE_1__* iflib_txq_t ;
typedef TYPE_2__* if_t ;
typedef TYPE_3__* if_ctx_t ;
struct TYPE_12__ {int ifc_sysctl_tx_abdicate; TYPE_1__* ifc_txqs; } ;
struct TYPE_11__ {int if_drv_flags; int if_snd; } ;
struct TYPE_10__ {int ift_br; scalar_t__ ift_closed; int ift_task; } ;


 int ALTQ_IS_ENABLED (int *) ;
 int DBG_COUNTER_INC (int ) ;
 int ENETDOWN ;
 int ENOBUFS ;
 int GROUPTASK_ENQUEUE (int *) ;
 int IFF_DRV_RUNNING ;
 int LINK_ACTIVE (TYPE_3__*) ;
 int MPASS (int ) ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 int M_IFLIB ;
 int M_NOWAIT ;
 int NTXQSETS (TYPE_3__*) ;
 int QIDX (TYPE_3__*,struct mbuf*) ;
 scalar_t__ TRUE ;
 int TX_BATCH_SIZE ;
 scalar_t__ __predict_false (int) ;
 int count ;
 size_t i ;
 TYPE_3__* if_getsoftc (TYPE_2__*) ;
 int ifmp_ring_check_drainage (int ,int ) ;
 int ifmp_ring_enqueue (int ,void**,int,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct mbuf** malloc (int,int ,int ) ;
 struct mbuf** marr ;
 struct mbuf** mp ;
 struct mbuf* next ;
 int nitems (struct mbuf**) ;
 int tx_frees ;
 int tx_seen ;

__attribute__((used)) static int
iflib_if_transmit(if_t ifp, struct mbuf *m)
{
 if_ctx_t ctx = if_getsoftc(ifp);

 iflib_txq_t txq;
 int err, qidx;
 int abdicate = ctx->ifc_sysctl_tx_abdicate;

 if (__predict_false((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 || !LINK_ACTIVE(ctx))) {
  DBG_COUNTER_INC(tx_frees);
  m_freem(m);
  return (ENETDOWN);
 }

 MPASS(m->m_nextpkt == ((void*)0));

 qidx = 0;
 if ((NTXQSETS(ctx) > 1) && M_HASHTYPE_GET(m) && !ALTQ_IS_ENABLED(&ifp->if_snd))
  qidx = QIDX(ctx, m);



 txq = &ctx->ifc_txqs[qidx];
 DBG_COUNTER_INC(tx_seen);
 err = ifmp_ring_enqueue(txq->ift_br, (void **)&m, 1, TX_BATCH_SIZE, abdicate);

 if (abdicate)
  GROUPTASK_ENQUEUE(&txq->ift_task);
  if (err) {
  if (!abdicate)
   GROUPTASK_ENQUEUE(&txq->ift_task);




  ifmp_ring_check_drainage(txq->ift_br, TX_BATCH_SIZE);
  m_freem(m);
  DBG_COUNTER_INC(tx_frees);
 }

 return (err);
}
