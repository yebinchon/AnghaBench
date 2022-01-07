
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ida_softc {int flags; int ch; scalar_t__ qactive; int dev; int hwqcb_dmamap; int hwqcb_dmat; int buffer_dmat; int lock; } ;
struct ida_qcb {scalar_t__ state; int flags; char* error; TYPE_3__* buf; TYPE_2__* hwqcb; int dmamap; } ;
typedef int bus_dmasync_op_t ;
struct TYPE_6__ {scalar_t__ bio_cmd; int bio_flags; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_5__ {TYPE_1__ req; } ;


 int BIO_ERROR ;
 scalar_t__ BIO_READ ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CMD_REJECTED ;

 int const DMA_DATA_OUT ;

 int HARD_ERROR ;
 int IDA_COMMAND ;
 int IDA_INTERRUPTS ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ QCB_FREE ;
 scalar_t__ QCB_TIMEDOUT ;
 int SOFT_ERROR ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_reset (int *,int,int ,struct ida_softc*) ;
 int callout_stop (int *) ;
 int device_printf (int ,char*,...) ;
 int dumping ;
 int hz ;
 int ida_free_qcb (struct ida_softc*,struct ida_qcb*) ;
 int ida_timeout ;
 int idad_intr (TYPE_3__*) ;
 int mtx_assert (int *,int ) ;
 int wakeup (struct ida_qcb*) ;

__attribute__((used)) static void
ida_done(struct ida_softc *ida, struct ida_qcb *qcb)
{
 bus_dmasync_op_t op;
 int active, error = 0;




 if (!dumping)
  mtx_assert(&ida->lock, MA_OWNED);
 active = (qcb->state != QCB_FREE);
 if (qcb->flags & 128 && active) {
  switch (qcb->flags & 128) {
  case 128:
   op = BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE;
   break;
  case 129:
   op = BUS_DMASYNC_POSTREAD;
   break;
  default:
   KASSERT((qcb->flags & 128) ==
       DMA_DATA_OUT, ("bad DMA data flags"));
   op = BUS_DMASYNC_POSTWRITE;
   break;
  }
  bus_dmamap_sync(ida->buffer_dmat, qcb->dmamap, op);
  bus_dmamap_unload(ida->buffer_dmat, qcb->dmamap);
 }
 if (active)
  bus_dmamap_sync(ida->hwqcb_dmat, ida->hwqcb_dmamap,
      BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 if (qcb->hwqcb->req.error & SOFT_ERROR) {
  if (qcb->buf)
   device_printf(ida->dev, "soft %s error\n",
    qcb->buf->bio_cmd == BIO_READ ?
     "read" : "write");
  else
   device_printf(ida->dev, "soft error\n");
 }
 if (qcb->hwqcb->req.error & HARD_ERROR) {
  error = 1;
  if (qcb->buf)
   device_printf(ida->dev, "hard %s error\n",
    qcb->buf->bio_cmd == BIO_READ ?
     "read" : "write");
  else
   device_printf(ida->dev, "hard error\n");
 }
 if (qcb->hwqcb->req.error & CMD_REJECTED) {
  error = 1;
  device_printf(ida->dev, "invalid request\n");
 }
 if (qcb->error) {
  error = 1;
  device_printf(ida->dev, "request failed to map: %d\n", qcb->error);
 }

 if (qcb->flags & IDA_COMMAND) {
  if (ida->flags & IDA_INTERRUPTS)
   wakeup(qcb);
  if (qcb->state == QCB_TIMEDOUT)
   ida_free_qcb(ida, qcb);
 } else {
  KASSERT(qcb->buf != ((void*)0), ("ida_done(): qcb->buf is NULL!"));
  if (error)
   qcb->buf->bio_flags |= BIO_ERROR;
  idad_intr(qcb->buf);
  ida_free_qcb(ida, qcb);
 }

 if (!active)
  return;

 ida->qactive--;

 if (ida->qactive)
  callout_reset(&ida->ch, hz * 5, ida_timeout, ida);
 else
  callout_stop(&ida->ch);
}
