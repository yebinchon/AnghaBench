
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct idad_softc {int drive; } ;
struct ida_softc {int flags; int bio_queue; int lock; } ;
struct ida_qcb {int error; struct ida_hardware_qcb* hwqcb; int flags; struct bio* buf; } ;
struct TYPE_4__ {int command; int bcount; int blkno; } ;
struct TYPE_3__ {int drive; } ;
struct ida_hardware_qcb {TYPE_2__ req; TYPE_1__ hdr; } ;
struct bio {scalar_t__ bio_cmd; int bio_bcount; int bio_data; int bio_pblkno; struct idad_softc* bio_driver1; } ;


 scalar_t__ BIO_READ ;
 int CMD_READ ;
 int CMD_WRITE ;
 int DEV_BSIZE ;
 int DMA_DATA_IN ;
 int DMA_DATA_OUT ;
 int IDA_QFROZEN ;
 int MA_OWNED ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int howmany (int ,int ) ;
 int ida_done (struct ida_softc*,struct ida_qcb*) ;
 struct ida_qcb* ida_get_qcb (struct ida_softc*) ;
 int ida_map_qcb (struct ida_softc*,struct ida_qcb*,int ,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
ida_startio(struct ida_softc *ida)
{
 struct ida_hardware_qcb *hwqcb;
 struct ida_qcb *qcb;
 struct idad_softc *drv;
 struct bio *bp;
 int error;

 mtx_assert(&ida->lock, MA_OWNED);
 for (;;) {
  if (ida->flags & IDA_QFROZEN)
   return;
  bp = bioq_first(&ida->bio_queue);
  if (bp == ((void*)0))
   return;

  qcb = ida_get_qcb(ida);
  if (qcb == ((void*)0))
   return;

  bioq_remove(&ida->bio_queue, bp);
  qcb->buf = bp;
  qcb->flags = bp->bio_cmd == BIO_READ ? DMA_DATA_IN : DMA_DATA_OUT;

  hwqcb = qcb->hwqcb;
  drv = bp->bio_driver1;
  hwqcb->hdr.drive = drv->drive;
  hwqcb->req.blkno = bp->bio_pblkno;
  hwqcb->req.bcount = howmany(bp->bio_bcount, DEV_BSIZE);
  hwqcb->req.command = bp->bio_cmd == BIO_READ ? CMD_READ : CMD_WRITE;

  error = ida_map_qcb(ida, qcb, bp->bio_data, bp->bio_bcount);
  if (error) {
   qcb->error = error;
   ida_done(ida, qcb);
  }
 }
}
