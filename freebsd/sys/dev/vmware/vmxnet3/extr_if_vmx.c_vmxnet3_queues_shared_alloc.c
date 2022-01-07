
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_txq_shared {int dummy; } ;
struct vmxnet3_softc {int vmx_dev; int vmx_qs_dma; int vmx_ctx; TYPE_1__* vmx_scctx; } ;
struct vmxnet3_rxq_shared {int dummy; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int isc_ntxqsets; int isc_nrxqsets; } ;


 int device_printf (int ,char*) ;
 int iflib_dma_alloc_align (int ,int,int,int *,int ) ;

__attribute__((used)) static int
vmxnet3_queues_shared_alloc(struct vmxnet3_softc *sc)
{
 if_softc_ctx_t scctx;
 int size;
 int error;

 scctx = sc->vmx_scctx;






 size = scctx->isc_ntxqsets * sizeof(struct vmxnet3_txq_shared) +
     scctx->isc_nrxqsets * sizeof(struct vmxnet3_rxq_shared);
 error = iflib_dma_alloc_align(sc->vmx_ctx, size, 128, &sc->vmx_qs_dma, 0);
 if (error) {
  device_printf(sc->vmx_dev, "cannot alloc queue shared memory\n");
  return (error);
 }

 return (0);
}
