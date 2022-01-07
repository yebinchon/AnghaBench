
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ idi_size; } ;
struct vmxnet3_softc {int * vmx_txq; int * vmx_rxq; TYPE_1__ vmx_qs_dma; } ;
typedef int if_ctx_t ;


 int M_DEVBUF ;
 int free (int *,int ) ;
 int iflib_dma_free (TYPE_1__*) ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;

__attribute__((used)) static void
vmxnet3_queues_free(if_ctx_t ctx)
{
 struct vmxnet3_softc *sc;

 sc = iflib_get_softc(ctx);


 if (sc->vmx_qs_dma.idi_size != 0) {
  iflib_dma_free(&sc->vmx_qs_dma);
  sc->vmx_qs_dma.idi_size = 0;
 }


 if (sc->vmx_rxq != ((void*)0)) {
  free(sc->vmx_rxq, M_DEVBUF);
  sc->vmx_rxq = ((void*)0);
 }


 if (sc->vmx_txq != ((void*)0)) {
  free(sc->vmx_txq, M_DEVBUF);
  sc->vmx_txq = ((void*)0);
 }
}
