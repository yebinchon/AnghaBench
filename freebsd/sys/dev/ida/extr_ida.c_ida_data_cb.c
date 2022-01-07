
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ida_softc {int flags; int qcb_queue; int hwqcb_dmamap; int hwqcb_dmat; int buffer_dmat; int lock; } ;
struct ida_sgb {int dummy; } ;
struct ida_req {int dummy; } ;
struct ida_qcb {int error; int flags; int dmamap; struct ida_hardware_qcb* hwqcb; struct ida_softc* ida; } ;
struct TYPE_9__ {int sgcount; } ;
struct TYPE_7__ {int size; } ;
struct ida_hardware_qcb {TYPE_3__ req; TYPE_2__* seg; TYPE_1__ hdr; } ;
typedef int bus_dmasync_op_t ;
struct TYPE_10__ {int ds_len; int ds_addr; } ;
typedef TYPE_4__ bus_dma_segment_t ;
struct TYPE_11__ {int stqe; } ;
struct TYPE_8__ {void* length; void* addr; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;

 int const DMA_DATA_OUT ;

 int IDA_NSEG ;
 int IDA_QFROZEN ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int STAILQ_INSERT_TAIL (int *,struct ida_qcb*,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int dumping ;
 int htole16 (int) ;
 void* htole32 (int ) ;
 int ida_done (struct ida_softc*,struct ida_qcb*) ;
 int ida_start (struct ida_softc*) ;
 TYPE_5__ link ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
ida_data_cb(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
 struct ida_hardware_qcb *hwqcb;
 struct ida_softc *ida;
 struct ida_qcb *qcb;
 bus_dmasync_op_t op;
 int i;

 qcb = arg;
 ida = qcb->ida;
 if (!dumping)
  mtx_assert(&ida->lock, MA_OWNED);
 if (error) {
  qcb->error = error;
  ida_done(ida, qcb);
  return;
 }

 hwqcb = qcb->hwqcb;
 hwqcb->hdr.size = htole16((sizeof(struct ida_req) +
     sizeof(struct ida_sgb) * IDA_NSEG) >> 2);

 for (i = 0; i < nsegments; i++) {
  hwqcb->seg[i].addr = htole32(segs[i].ds_addr);
  hwqcb->seg[i].length = htole32(segs[i].ds_len);
 }
 hwqcb->req.sgcount = nsegments;
 if (qcb->flags & 128) {
  switch (qcb->flags & 128) {
  case 128:
   op = BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE;
   break;
  case 129:
   op = BUS_DMASYNC_PREREAD;
   break;
  default:
   KASSERT((qcb->flags & 128) ==
       DMA_DATA_OUT, ("bad DMA data flags"));
   op = BUS_DMASYNC_PREWRITE;
   break;
  }
  bus_dmamap_sync(ida->buffer_dmat, qcb->dmamap, op);
 }
 bus_dmamap_sync(ida->hwqcb_dmat, ida->hwqcb_dmamap,
     BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);

 STAILQ_INSERT_TAIL(&ida->qcb_queue, qcb, link.stqe);
 ida_start(ida);
 ida->flags &= ~IDA_QFROZEN;
}
