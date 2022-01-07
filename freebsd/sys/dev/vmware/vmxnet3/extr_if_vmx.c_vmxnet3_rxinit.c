
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_softc {TYPE_1__* vmx_sctx; } ;
struct vmxnet3_rxring {int vxrxr_ndesc; int vxrxr_rxd; void* vxrxr_gen; } ;
struct vmxnet3_comp_ring {void* vxcr_gen; scalar_t__ vxcr_next; } ;
struct vmxnet3_rxqueue {struct vmxnet3_comp_ring vxrxq_comp_ring; struct vmxnet3_rxring* vxrxq_cmd_ring; } ;
struct vmxnet3_rxdesc {int dummy; } ;
struct TYPE_2__ {int isc_nrxqs; } ;


 void* VMXNET3_INIT_GEN ;
 int VMXNET3_RXRINGS_PERQ ;
 int bzero (int ,int) ;

__attribute__((used)) static void
vmxnet3_rxinit(struct vmxnet3_softc *sc, struct vmxnet3_rxqueue *rxq)
{
 struct vmxnet3_rxring *rxr;
 struct vmxnet3_comp_ring *rxc;
 int i;





 for (i = 0; i < sc->vmx_sctx->isc_nrxqs - 1; i++) {
  rxr = &rxq->vxrxq_cmd_ring[i];
  rxr->vxrxr_gen = VMXNET3_INIT_GEN;




 }

 for ( ; i < VMXNET3_RXRINGS_PERQ; i++) {
  rxr = &rxq->vxrxq_cmd_ring[i];
  rxr->vxrxr_gen = 0;
  bzero(rxr->vxrxr_rxd,
      rxr->vxrxr_ndesc * sizeof(struct vmxnet3_rxdesc));
 }

 rxc = &rxq->vxrxq_comp_ring;
 rxc->vxcr_next = 0;
 rxc->vxcr_gen = VMXNET3_INIT_GEN;




}
