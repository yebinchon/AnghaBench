
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {scalar_t__ vmx_intr_mask_mode; } ;
struct vmxnet3_rxqueue {int vxrxq_intr_idx; struct vmxnet3_softc* vxrxq_sc; } ;


 int FILTER_SCHEDULE_THREAD ;
 scalar_t__ VMXNET3_IMM_ACTIVE ;
 int vmxnet3_disable_intr (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static int
vmxnet3_rxq_intr(void *vrxq)
{
 struct vmxnet3_softc *sc;
 struct vmxnet3_rxqueue *rxq;

 rxq = vrxq;
 sc = rxq->vxrxq_sc;

 if (sc->vmx_intr_mask_mode == VMXNET3_IMM_ACTIVE)
  vmxnet3_disable_intr(sc, rxq->vxrxq_intr_idx);

 return (FILTER_SCHEDULE_THREAD);
}
