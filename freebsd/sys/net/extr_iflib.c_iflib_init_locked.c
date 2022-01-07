
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_11__ ;


typedef TYPE_1__* iflib_txq_t ;
typedef TYPE_2__* iflib_rxq_t ;
typedef int iflib_fl_t ;
typedef int if_t ;
typedef TYPE_3__* if_softc_ctx_t ;
typedef TYPE_4__* if_ctx_t ;
struct TYPE_22__ {int isc_tx_csum_flags; int isc_ntxqsets; int isc_nrxqsets; } ;
struct TYPE_23__ {TYPE_1__* ifc_txqs; int ifc_ifp; int ifc_dev; TYPE_2__* ifc_rxqs; TYPE_3__ ifc_softc_ctx; } ;
struct TYPE_21__ {int ifr_id; int ifr_nfl; int ifr_fl; } ;
struct TYPE_19__ {int c_cpu; } ;
struct TYPE_20__ {TYPE_11__ ift_timer; } ;


 int CALLOUT_LOCK (TYPE_1__*) ;
 int CALLOUT_UNLOCK (TYPE_1__*) ;
 int CSUM_IP ;
 int CSUM_IP6_SCTP ;
 int CSUM_IP6_TCP ;
 int CSUM_IP6_TSO ;
 int CSUM_IP6_UDP ;
 int CSUM_IP_TSO ;
 int CSUM_SCTP ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int IFCAP_NETMAP ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int IFDI_INIT (TYPE_4__*) ;
 int IFDI_INTR_DISABLE (TYPE_4__*) ;
 int IFDI_INTR_ENABLE (TYPE_4__*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MPASS (int) ;
 int callout_reset_on (TYPE_11__*,int,int ,TYPE_1__*,int ) ;
 int callout_stop (TYPE_11__*) ;
 int device_printf (int ,char*,int) ;
 int hz ;
 int if_clearhwassist (int ) ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 int if_sethwassistbits (int ,int,int ) ;
 int iflib_calc_rx_mbuf_sz (TYPE_4__*) ;
 scalar_t__ iflib_fl_setup (int ) ;
 int iflib_netmap_rxq_init (TYPE_4__*,TYPE_2__*) ;
 int iflib_netmap_txq_init (TYPE_4__*,TYPE_1__*) ;
 int iflib_timer ;

__attribute__((used)) static void
iflib_init_locked(if_ctx_t ctx)
{
 if_softc_ctx_t sctx = &ctx->ifc_softc_ctx;
 if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
 if_t ifp = ctx->ifc_ifp;
 iflib_fl_t fl;
 iflib_txq_t txq;
 iflib_rxq_t rxq;
 int i, j, tx_ip_csum_flags, tx_ip6_csum_flags;

 if_setdrvflagbits(ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);
 IFDI_INTR_DISABLE(ctx);

 tx_ip_csum_flags = scctx->isc_tx_csum_flags & (CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_SCTP);
 tx_ip6_csum_flags = scctx->isc_tx_csum_flags & (CSUM_IP6_TCP | CSUM_IP6_UDP | CSUM_IP6_SCTP);

 if_clearhwassist(ifp);
 if (if_getcapenable(ifp) & IFCAP_TXCSUM)
  if_sethwassistbits(ifp, tx_ip_csum_flags, 0);
 if (if_getcapenable(ifp) & IFCAP_TXCSUM_IPV6)
  if_sethwassistbits(ifp, tx_ip6_csum_flags, 0);
 if (if_getcapenable(ifp) & IFCAP_TSO4)
  if_sethwassistbits(ifp, CSUM_IP_TSO, 0);
 if (if_getcapenable(ifp) & IFCAP_TSO6)
  if_sethwassistbits(ifp, CSUM_IP6_TSO, 0);

 for (i = 0, txq = ctx->ifc_txqs; i < sctx->isc_ntxqsets; i++, txq++) {
  CALLOUT_LOCK(txq);
  callout_stop(&txq->ift_timer);
  CALLOUT_UNLOCK(txq);
  iflib_netmap_txq_init(ctx, txq);
 }






 iflib_calc_rx_mbuf_sz(ctx);




 IFDI_INIT(ctx);
 MPASS(if_getdrvflags(ifp) == i);
 for (i = 0, rxq = ctx->ifc_rxqs; i < sctx->isc_nrxqsets; i++, rxq++) {

  if (if_getcapenable(ifp) & IFCAP_NETMAP) {
   MPASS(rxq->ifr_id == i);
   iflib_netmap_rxq_init(ctx, rxq);
   continue;
  }
  for (j = 0, fl = rxq->ifr_fl; j < rxq->ifr_nfl; j++, fl++) {
   if (iflib_fl_setup(fl)) {
    device_printf(ctx->ifc_dev,
        "setting up free list %d failed - "
        "check cluster settings\n", j);
    goto done;
   }
  }
 }
done:
 if_setdrvflagbits(ctx->ifc_ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);
 IFDI_INTR_ENABLE(ctx);
 txq = ctx->ifc_txqs;
 for (i = 0; i < sctx->isc_ntxqsets; i++, txq++)
  callout_reset_on(&txq->ift_timer, hz/2, iflib_timer, txq,
   txq->ift_timer.c_cpu);
}
