
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {int vmx_event_intr_irq; int vmx_ctx; struct vmxnet3_rxqueue* vmx_rxq; TYPE_1__* vmx_scctx; } ;
struct vmxnet3_rxqueue {int vxrxq_irq; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int isc_nrxqsets; } ;


 int iflib_irq_free (int ,int *) ;

__attribute__((used)) static void
vmxnet3_free_irqs(struct vmxnet3_softc *sc)
{
 if_softc_ctx_t scctx;
 struct vmxnet3_rxqueue *rxq;
 int i;

 scctx = sc->vmx_scctx;

 for (i = 0; i < scctx->isc_nrxqsets; i++) {
  rxq = &sc->vmx_rxq[i];
  iflib_irq_free(sc->vmx_ctx, &rxq->vxrxq_irq);
 }

 iflib_irq_free(sc->vmx_ctx, &sc->vmx_event_intr_irq);
}
