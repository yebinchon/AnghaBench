
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_txring {void* vxtxr_gen; scalar_t__ vxtxr_next; } ;
struct vmxnet3_comp_ring {void* vxcr_gen; scalar_t__ vxcr_next; } ;
struct vmxnet3_txqueue {int vxtxq_last_flush; struct vmxnet3_comp_ring vxtxq_comp_ring; struct vmxnet3_txring vxtxq_cmd_ring; } ;
struct vmxnet3_softc {int dummy; } ;


 void* VMXNET3_INIT_GEN ;

__attribute__((used)) static void
vmxnet3_txinit(struct vmxnet3_softc *sc, struct vmxnet3_txqueue *txq)
{
 struct vmxnet3_txring *txr;
 struct vmxnet3_comp_ring *txc;

 txq->vxtxq_last_flush = -1;

 txr = &txq->vxtxq_cmd_ring;
 txr->vxtxr_next = 0;
 txr->vxtxr_gen = VMXNET3_INIT_GEN;





 txc = &txq->vxtxq_comp_ring;
 txc->vxcr_next = 0;
 txc->vxcr_gen = VMXNET3_INIT_GEN;




}
