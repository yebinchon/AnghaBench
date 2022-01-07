
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {int * vmx_rxq; int * vmx_txq; TYPE_1__* vmx_scctx; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int isc_ntxqsets; int isc_nrxqsets; } ;


 int vmxnet3_rxinit (struct vmxnet3_softc*,int *) ;
 int vmxnet3_txinit (struct vmxnet3_softc*,int *) ;

__attribute__((used)) static void
vmxnet3_reinit_queues(struct vmxnet3_softc *sc)
{
 if_softc_ctx_t scctx;
 int q;

 scctx = sc->vmx_scctx;

 for (q = 0; q < scctx->isc_ntxqsets; q++)
  vmxnet3_txinit(sc, &sc->vmx_txq[q]);

 for (q = 0; q < scctx->isc_nrxqsets; q++)
  vmxnet3_rxinit(sc, &sc->vmx_rxq[q]);
}
