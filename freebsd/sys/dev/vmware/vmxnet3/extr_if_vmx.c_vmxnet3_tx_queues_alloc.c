
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct vmxnet3_txring {void* vxtxr_paddr; struct vmxnet3_txdesc* vxtxr_txd; } ;
struct TYPE_4__ {struct vmxnet3_txcompdesc* txcd; } ;
struct vmxnet3_comp_ring {void* vxcr_paddr; TYPE_2__ vxcr_u; } ;
struct vmxnet3_txqueue {struct vmxnet3_txring vxtxq_cmd_ring; struct vmxnet3_comp_ring vxtxq_comp_ring; struct vmxnet3_txq_shared* vxtxq_ts; } ;
struct vmxnet3_txq_shared {int dummy; } ;
struct vmxnet3_txdesc {int dummy; } ;
struct vmxnet3_txcompdesc {int dummy; } ;
struct TYPE_3__ {scalar_t__ idi_size; scalar_t__ idi_vaddr; } ;
struct vmxnet3_softc {struct vmxnet3_txqueue* vmx_txq; TYPE_1__ vmx_qs_dma; } ;
typedef int if_ctx_t ;
typedef scalar_t__ caddr_t ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 struct vmxnet3_txqueue* malloc (int,int ,int) ;
 int vmxnet3_init_txq (struct vmxnet3_softc*,int) ;
 int vmxnet3_queues_shared_alloc (struct vmxnet3_softc*) ;

__attribute__((used)) static int
vmxnet3_tx_queues_alloc(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs,
    int ntxqs, int ntxqsets)
{
 struct vmxnet3_softc *sc;
 int q;
 int error;
 caddr_t kva;

 sc = iflib_get_softc(ctx);


 sc->vmx_txq = malloc(sizeof(struct vmxnet3_txqueue) *
     ntxqsets, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (sc->vmx_txq == ((void*)0))
  return (ENOMEM);


 for (q = 0; q < ntxqsets; q++)
  vmxnet3_init_txq(sc, q);







 if (sc->vmx_qs_dma.idi_size == 0) {
  error = vmxnet3_queues_shared_alloc(sc);
  if (error)
   return (error);
 }

 kva = sc->vmx_qs_dma.idi_vaddr;
 for (q = 0; q < ntxqsets; q++) {
  sc->vmx_txq[q].vxtxq_ts = (struct vmxnet3_txq_shared *) kva;
  kva += sizeof(struct vmxnet3_txq_shared);
 }


 for (q = 0; q < ntxqsets; q++) {
  struct vmxnet3_txqueue *txq;
  struct vmxnet3_txring *txr;
  struct vmxnet3_comp_ring *txc;

  txq = &sc->vmx_txq[q];
  txc = &txq->vxtxq_comp_ring;
  txr = &txq->vxtxq_cmd_ring;


  txc->vxcr_u.txcd =
      (struct vmxnet3_txcompdesc *) vaddrs[q * ntxqs + 0];
  txc->vxcr_paddr = paddrs[q * ntxqs + 0];


  txr->vxtxr_txd =
      (struct vmxnet3_txdesc *) vaddrs[q * ntxqs + 1];
  txr->vxtxr_paddr = paddrs[q * ntxqs + 1];
 }

 return (0);
}
