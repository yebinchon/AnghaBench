
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct vmxnet3_txring {int vxtxr_next; int vxtxr_ndesc; } ;
struct TYPE_2__ {struct vmxnet3_txcompdesc* txcd; } ;
struct vmxnet3_comp_ring {size_t vxcr_next; int vxcr_gen; size_t vxcr_ndesc; TYPE_1__ vxcr_u; } ;
struct vmxnet3_txqueue {struct vmxnet3_txring vxtxq_cmd_ring; struct vmxnet3_comp_ring vxtxq_comp_ring; } ;
struct vmxnet3_txcompdesc {int gen; int eop_idx; } ;
struct vmxnet3_softc {struct vmxnet3_txqueue* vmx_txq; } ;


 int VMXNET3_BARRIER_RD ;
 int vmxnet3_barrier (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static int
vmxnet3_isc_txd_credits_update(void *vsc, uint16_t txqid, bool clear)
{
 struct vmxnet3_softc *sc;
 struct vmxnet3_txqueue *txq;
 struct vmxnet3_comp_ring *txc;
 struct vmxnet3_txcompdesc *txcd;
 struct vmxnet3_txring *txr;
 int processed;

 sc = vsc;
 txq = &sc->vmx_txq[txqid];
 txc = &txq->vxtxq_comp_ring;
 txr = &txq->vxtxq_cmd_ring;







 processed = 0;
 for (;;) {
  txcd = &txc->vxcr_u.txcd[txc->vxcr_next];
  if (txcd->gen != txc->vxcr_gen)
   break;
  else if (!clear)
   return (1);
  vmxnet3_barrier(sc, VMXNET3_BARRIER_RD);

  if (++txc->vxcr_next == txc->vxcr_ndesc) {
   txc->vxcr_next = 0;
   txc->vxcr_gen ^= 1;
  }

  if (txcd->eop_idx < txr->vxtxr_next)
   processed += txr->vxtxr_ndesc -
       (txr->vxtxr_next - txcd->eop_idx) + 1;
  else
   processed += txcd->eop_idx - txr->vxtxr_next + 1;
  txr->vxtxr_next = (txcd->eop_idx + 1) % txr->vxtxr_ndesc;
 }

 return (processed);
}
