
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* if_softc_ctx_t ;
struct TYPE_5__ {TYPE_1__* isc_txrx; } ;
struct TYPE_4__ {int ift_rxd_flush; int ift_rxd_refill; int ift_rxd_pkt_get; int ift_rxd_available; int ift_txd_credits_update; int ift_txd_flush; int ift_txd_encap; } ;


 int MPASS (int ) ;

__attribute__((used)) static void
_iflib_pre_assert(if_softc_ctx_t scctx)
{

 MPASS(scctx->isc_txrx->ift_txd_encap);
 MPASS(scctx->isc_txrx->ift_txd_flush);
 MPASS(scctx->isc_txrx->ift_txd_credits_update);
 MPASS(scctx->isc_txrx->ift_rxd_available);
 MPASS(scctx->isc_txrx->ift_rxd_pkt_get);
 MPASS(scctx->isc_txrx->ift_rxd_refill);
 MPASS(scctx->isc_txrx->ift_rxd_flush);
}
