
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mgb_softc {int ctx; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_3__ {int isc_nrxqsets; } ;


 TYPE_1__* iflib_get_softc_ctx (int ) ;
 int mgb_dma_rx_ring_init (struct mgb_softc*,int) ;
 int mgb_dma_tx_ring_init (struct mgb_softc*,int) ;

__attribute__((used)) static int
mgb_dma_init(struct mgb_softc *sc)
{
 if_softc_ctx_t scctx;
 int ch, error = 0;

 scctx = iflib_get_softc_ctx(sc->ctx);

 for (ch = 0; ch < scctx->isc_nrxqsets; ch++)
  if ((error = mgb_dma_rx_ring_init(sc, ch)))
   goto fail;

 for (ch = 0; ch < scctx->isc_nrxqsets; ch++)
  if ((error = mgb_dma_tx_ring_init(sc, ch)))
   goto fail;

fail:
 return error;
}
