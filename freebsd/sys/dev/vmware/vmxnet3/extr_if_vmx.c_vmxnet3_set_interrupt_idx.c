
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_txqueue {int vxtxq_intr_idx; struct vmxnet3_txq_shared* vxtxq_ts; } ;
struct vmxnet3_txq_shared {int intr_idx; } ;
struct vmxnet3_softc {int vmx_event_intr_idx; struct vmxnet3_txqueue* vmx_txq; struct vmxnet3_rxqueue* vmx_rxq; TYPE_1__* vmx_scctx; } ;
struct vmxnet3_rxqueue {int vxrxq_intr_idx; struct vmxnet3_rxq_shared* vxrxq_rs; } ;
struct vmxnet3_rxq_shared {int intr_idx; } ;
typedef TYPE_1__* if_softc_ctx_t ;
struct TYPE_2__ {int isc_vectors; int isc_nrxqsets; int isc_ntxqsets; } ;



__attribute__((used)) static void
vmxnet3_set_interrupt_idx(struct vmxnet3_softc *sc)
{
 if_softc_ctx_t scctx;
 struct vmxnet3_txqueue *txq;
 struct vmxnet3_txq_shared *txs;
 struct vmxnet3_rxqueue *rxq;
 struct vmxnet3_rxq_shared *rxs;
 int intr_idx;
 int i;

 scctx = sc->vmx_scctx;
 sc->vmx_event_intr_idx = scctx->isc_vectors - 1;

 intr_idx = 0;
 for (i = 0; i < scctx->isc_nrxqsets; i++, intr_idx++) {
  rxq = &sc->vmx_rxq[i];
  rxs = rxq->vxrxq_rs;
  rxq->vxrxq_intr_idx = intr_idx;
  rxs->intr_idx = rxq->vxrxq_intr_idx;
 }





 intr_idx = scctx->isc_vectors;
 for (i = 0; i < scctx->isc_ntxqsets; i++, intr_idx++) {
  txq = &sc->vmx_txq[i];
  txs = txq->vxtxq_ts;
  txq->vxtxq_intr_idx = intr_idx;
  txs->intr_idx = txq->vxtxq_intr_idx;
 }
}
