
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int csum_flags; scalar_t__ len; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct if_rxd_info {int iri_cidx; scalar_t__ iri_len; scalar_t__ iri_nfrags; int iri_frags; TYPE_4__* iri_ifp; int iri_qsidx; } ;
typedef int qidx_t ;
typedef TYPE_2__* iflib_rxq_t ;
typedef TYPE_3__* iflib_fl_t ;
typedef TYPE_4__* if_t ;
typedef TYPE_5__* if_softc_ctx_t ;
typedef TYPE_6__* if_shared_ctx_t ;
typedef TYPE_7__* if_ctx_t ;
struct TYPE_27__ {scalar_t__* isc_nrxd; } ;
struct TYPE_29__ {int (* isc_rxd_pkt_get ) (int ,struct if_rxd_info*) ;int ifc_flags; int ifc_softc; TYPE_4__* ifc_ifp; TYPE_5__ ifc_softc_ctx; TYPE_6__* ifc_sctx; } ;
struct TYPE_28__ {int isc_flags; int isc_nfl; } ;
struct TYPE_26__ {int (* if_input ) (TYPE_4__*,struct mbuf*) ;int if_vnet; } ;
struct TYPE_25__ {int ifl_cidx; } ;
struct TYPE_24__ {int ifr_cq_cidx; int ifr_lc; TYPE_3__* ifr_fl; int ifr_frags; int ifr_id; TYPE_7__* ifr_ctx; } ;


 int CSUM_L4_CALC ;
 int CSUM_L4_VALID ;
 int CTX_ACTIVE (TYPE_7__*) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int DBG_COUNTER_INC (int ) ;
 int IFCAP_LRO ;
 int IFCOUNTER_IBYTES ;
 int IFCOUNTER_IPACKETS ;
 int IFC_DO_RESET ;
 int IFLIB_HAS_RXCQ ;
 int IP_ALIGNED (struct mbuf*) ;
 int MPASS (int) ;
 int STATE_LOCK (TYPE_7__*) ;
 int STATE_UNLOCK (TYPE_7__*) ;
 int __iflib_fl_refill_lt (TYPE_7__*,TYPE_3__*,int) ;
 scalar_t__ __predict_false (int) ;
 int if_getcapenable (TYPE_4__*) ;
 int if_inc_counter (TYPE_4__*,int ,int) ;
 int iflib_admin_intr_deferred (TYPE_7__*) ;
 int iflib_check_lro_possible (struct mbuf*,int,int) ;
 struct mbuf* iflib_fixup_rx (struct mbuf*) ;
 int iflib_get_ip_forwarding (int *,int*,int*) ;
 int iflib_rxd_avail (TYPE_7__*,TYPE_2__*,int,int) ;
 struct mbuf* iflib_rxd_pkt_get (TYPE_2__*,struct if_rxd_info*) ;
 int rx_ctx_inactive ;
 int rx_if_input ;
 int rx_unavail ;
 int rxd_info_zero (struct if_rxd_info*) ;
 int stub1 (int ,struct if_rxd_info*) ;
 int stub2 (TYPE_4__*,struct mbuf*) ;
 int stub3 (TYPE_4__*,struct mbuf*) ;
 int stub4 (TYPE_4__*,struct mbuf*) ;
 int tcp_lro_flush_all (int *) ;
 scalar_t__ tcp_lro_rx (int *,struct mbuf*,int ) ;

__attribute__((used)) static bool
iflib_rxeof(iflib_rxq_t rxq, qidx_t budget)
{
 if_t ifp;
 if_ctx_t ctx = rxq->ifr_ctx;
 if_shared_ctx_t sctx = ctx->ifc_sctx;
 if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
 int avail, i;
 qidx_t *cidxp;
 struct if_rxd_info ri;
 int err, budget_left, rx_bytes, rx_pkts;
 iflib_fl_t fl;
 int lro_enabled;
 bool v4_forwarding, v6_forwarding, lro_possible;





 struct mbuf *m, *mh, *mt, *mf;

 lro_possible = v4_forwarding = v6_forwarding = 0;
 ifp = ctx->ifc_ifp;
 mh = mt = ((void*)0);
 MPASS(budget > 0);
 rx_pkts = rx_bytes = 0;
 if (sctx->isc_flags & IFLIB_HAS_RXCQ)
  cidxp = &rxq->ifr_cq_cidx;
 else
  cidxp = &rxq->ifr_fl[0].ifl_cidx;
 if ((avail = iflib_rxd_avail(ctx, rxq, *cidxp, budget)) == 0) {
  for (i = 0, fl = &rxq->ifr_fl[0]; i < sctx->isc_nfl; i++, fl++)
   __iflib_fl_refill_lt(ctx, fl, budget + 8);
  DBG_COUNTER_INC(rx_unavail);
  return (0);
 }


 CURVNET_SET_QUIET(ifp->if_vnet);
 for (budget_left = budget; budget_left > 0 && avail > 0;) {
  if (__predict_false(!CTX_ACTIVE(ctx))) {
   DBG_COUNTER_INC(rx_ctx_inactive);
   break;
  }



  rxd_info_zero(&ri);
  ri.iri_qsidx = rxq->ifr_id;
  ri.iri_cidx = *cidxp;
  ri.iri_ifp = ifp;
  ri.iri_frags = rxq->ifr_frags;
  err = ctx->isc_rxd_pkt_get(ctx->ifc_softc, &ri);

  if (err)
   goto err;
  rx_pkts += 1;
  rx_bytes += ri.iri_len;
  if (sctx->isc_flags & IFLIB_HAS_RXCQ) {
   *cidxp = ri.iri_cidx;


   while (rxq->ifr_cq_cidx >= scctx->isc_nrxd[0])
    rxq->ifr_cq_cidx -= scctx->isc_nrxd[0];

   if (__predict_false(ri.iri_nfrags == 0))
    continue;
  }
  MPASS(ri.iri_nfrags != 0);
  MPASS(ri.iri_len != 0);


  m = iflib_rxd_pkt_get(rxq, &ri);
  avail--;
  budget_left--;
  if (avail == 0 && budget_left)
   avail = iflib_rxd_avail(ctx, rxq, *cidxp, budget_left);

  if (__predict_false(m == ((void*)0)))
   continue;


  if (mh == ((void*)0))
   mh = mt = m;
  else {
   mt->m_nextpkt = m;
   mt = m;
  }
 }
 CURVNET_RESTORE();

 for (i = 0, fl = &rxq->ifr_fl[0]; i < sctx->isc_nfl; i++, fl++)
  __iflib_fl_refill_lt(ctx, fl, budget + 8);

 lro_enabled = (if_getcapenable(ifp) & IFCAP_LRO);
 if (lro_enabled)
  iflib_get_ip_forwarding(&rxq->ifr_lc, &v4_forwarding, &v6_forwarding);
 mt = mf = ((void*)0);
 while (mh != ((void*)0)) {
  m = mh;
  mh = mh->m_nextpkt;
  m->m_nextpkt = ((void*)0);

  if (!IP_ALIGNED(m) && (m = iflib_fixup_rx(m)) == ((void*)0))
   continue;

  rx_bytes += m->m_pkthdr.len;
  rx_pkts++;
  if (lro_possible) {
   ifp->if_input(ifp, m);
   DBG_COUNTER_INC(rx_if_input);
   continue;
  }

  if (mf == ((void*)0))
   mf = m;
  if (mt != ((void*)0))
   mt->m_nextpkt = m;
  mt = m;
 }
 if (mf != ((void*)0)) {
  ifp->if_input(ifp, mf);
  DBG_COUNTER_INC(rx_if_input);
 }

 if_inc_counter(ifp, IFCOUNTER_IBYTES, rx_bytes);
 if_inc_counter(ifp, IFCOUNTER_IPACKETS, rx_pkts);







 if (avail)
  return 1;
 return (iflib_rxd_avail(ctx, rxq, *cidxp, 1));
err:
 STATE_LOCK(ctx);
 ctx->ifc_flags |= IFC_DO_RESET;
 iflib_admin_intr_deferred(ctx);
 STATE_UNLOCK(ctx);
 return (0);
}
