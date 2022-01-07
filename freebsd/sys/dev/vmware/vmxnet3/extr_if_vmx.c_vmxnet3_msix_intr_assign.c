
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {int vmx_event_intr_irq; int vxrxq_irq; struct vmxnet3_softc* vmx_rxq; TYPE_1__* vmx_scctx; } ;
struct vmxnet3_rxqueue {int vmx_event_intr_irq; int vxrxq_irq; struct vmxnet3_rxqueue* vmx_rxq; TYPE_1__* vmx_scctx; } ;
typedef int irq_name ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_2__ {int isc_nrxqsets; int isc_ntxqsets; } ;


 int IFLIB_INTR_ADMIN ;
 int IFLIB_INTR_RX ;
 int IFLIB_INTR_TX ;
 int device_printf (int ,char*,...) ;
 int iflib_get_dev (int ) ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 int iflib_irq_alloc_generic (int ,int *,int,int ,int ,struct vmxnet3_softc*,int,char*) ;
 int iflib_softirq_alloc_generic (int ,int *,int ,int *,int,char*) ;
 int snprintf (char*,int,char*,int) ;
 int vmxnet3_event_intr ;
 int vmxnet3_rxq_intr ;

__attribute__((used)) static int
vmxnet3_msix_intr_assign(if_ctx_t ctx, int msix)
{
 struct vmxnet3_softc *sc;
 if_softc_ctx_t scctx;
 struct vmxnet3_rxqueue *rxq;
 int error;
 int i;
 char irq_name[16];

 sc = iflib_get_softc(ctx);
 scctx = sc->vmx_scctx;

 for (i = 0; i < scctx->isc_nrxqsets; i++) {
  snprintf(irq_name, sizeof(irq_name), "rxq%d", i);

  rxq = &sc->vmx_rxq[i];
  error = iflib_irq_alloc_generic(ctx, &rxq->vxrxq_irq, i + 1,
      IFLIB_INTR_RX, vmxnet3_rxq_intr, rxq, i, irq_name);
  if (error) {
   device_printf(iflib_get_dev(ctx),
       "Failed to register rxq %d interrupt handler\n", i);
   return (error);
  }
 }

 for (i = 0; i < scctx->isc_ntxqsets; i++) {
  snprintf(irq_name, sizeof(irq_name), "txq%d", i);
  iflib_softirq_alloc_generic(ctx, ((void*)0), IFLIB_INTR_TX, ((void*)0), i,
      irq_name);
 }

 error = iflib_irq_alloc_generic(ctx, &sc->vmx_event_intr_irq,
     scctx->isc_nrxqsets + 1, IFLIB_INTR_ADMIN, vmxnet3_event_intr, sc, 0,
     "event");
 if (error) {
  device_printf(iflib_get_dev(ctx),
      "Failed to register event interrupt handler\n");
  return (error);
 }

 return (0);
}
