
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* iflib_rxq_t ;
typedef TYPE_3__* if_shared_ctx_t ;
typedef TYPE_4__* if_ctx_t ;
struct TYPE_8__ {int isc_nrxqsets; } ;
struct TYPE_11__ {TYPE_2__* ifc_rxqs; int ifc_ifp; TYPE_1__ ifc_softc_ctx; TYPE_3__* ifc_sctx; } ;
struct TYPE_10__ {int isc_nrxqs; } ;
struct TYPE_9__ {int ifr_lc; int * ifr_ifdi; } ;


 int IFCAP_LRO ;
 int M_IFLIB ;
 int free (TYPE_2__*,int ) ;
 int if_getcapabilities (int ) ;
 int iflib_dma_free (int *) ;
 int iflib_rx_sds_free (TYPE_2__*) ;
 int tcp_lro_free (int *) ;

__attribute__((used)) static void
iflib_rx_structures_free(if_ctx_t ctx)
{
 iflib_rxq_t rxq = ctx->ifc_rxqs;
 if_shared_ctx_t sctx = ctx->ifc_sctx;
 int i, j;

 for (i = 0; i < ctx->ifc_softc_ctx.isc_nrxqsets; i++, rxq++) {
  for (j = 0; j < sctx->isc_nrxqs; j++)
   iflib_dma_free(&rxq->ifr_ifdi[j]);
  iflib_rx_sds_free(rxq);




 }
 free(ctx->ifc_rxqs, M_IFLIB);
 ctx->ifc_rxqs = ((void*)0);
}
