
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct vmxnet3_txqueue {int vxtxq_id; int vxtxq_last_flush; } ;
struct vmxnet3_softc {struct vmxnet3_txqueue* vmx_txq; } ;
typedef int qidx_t ;


 int VMXNET3_BAR0_TXH (int ) ;
 int vmxnet3_write_bar0 (struct vmxnet3_softc*,int ,int ) ;

__attribute__((used)) static void
vmxnet3_isc_txd_flush(void *vsc, uint16_t txqid, qidx_t pidx)
{
 struct vmxnet3_softc *sc;
 struct vmxnet3_txqueue *txq;

 sc = vsc;
 txq = &sc->vmx_txq[txqid];
 if (txq->vxtxq_last_flush == pidx)
  return;
 txq->vxtxq_last_flush = pidx;
 vmxnet3_write_bar0(sc, VMXNET3_BAR0_TXH(txq->vxtxq_id), pidx);
}
