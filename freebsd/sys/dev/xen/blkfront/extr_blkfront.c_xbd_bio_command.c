
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {scalar_t__ xbd_state; int xbd_flags; int xbd_max_request_segments; int xbd_callback; } ;
struct xbd_command {void* cm_operation; int cm_flags; scalar_t__ cm_sector_number; struct bio* cm_bp; int cm_gref_head; } ;
struct bio {int bio_cmd; int bio_flags; scalar_t__ bio_pblkno; } ;
typedef scalar_t__ blkif_sector_t ;



 int BIO_ORDERED ;


 void* BLKIF_OP_FLUSH_DISKCACHE ;
 void* BLKIF_OP_READ ;
 void* BLKIF_OP_WRITE ;
 void* BLKIF_OP_WRITE_BARRIER ;
 int XBDCF_Q_FREEZE ;
 int XBDF_BARRIER ;
 int XBDF_CM_SHORTAGE ;
 int XBDF_FLUSH ;
 int XBDF_GNT_SHORTAGE ;
 int XBDF_WAIT_IDLE ;
 int XBD_Q_BUSY ;
 int XBD_Q_FREE ;
 int XBD_Q_READY ;
 scalar_t__ XBD_STATE_CONNECTED ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ gnttab_alloc_grant_references (int ,int *) ;
 int gnttab_request_free_callback (int *,int ,struct xbd_softc*,int ) ;
 int panic (char*,...) ;
 struct bio* xbd_dequeue_bio (struct xbd_softc*) ;
 struct xbd_command* xbd_dequeue_cm (struct xbd_softc*,int ) ;
 int xbd_enqueue_cm (struct xbd_command*,int ) ;
 int xbd_freeze (struct xbd_softc*,int ) ;
 int xbd_queue_length (struct xbd_softc*,int ) ;
 int xbd_requeue_bio (struct xbd_softc*,struct bio*) ;
 int xbd_requeue_cm (struct xbd_command*,int ) ;
 int xbd_restart_queue_callback ;

__attribute__((used)) static struct xbd_command *
xbd_bio_command(struct xbd_softc *sc)
{
 struct xbd_command *cm;
 struct bio *bp;

 if (__predict_false(sc->xbd_state != XBD_STATE_CONNECTED))
  return (((void*)0));

 bp = xbd_dequeue_bio(sc);
 if (bp == ((void*)0))
  return (((void*)0));

 if ((cm = xbd_dequeue_cm(sc, XBD_Q_FREE)) == ((void*)0)) {
  xbd_freeze(sc, XBDF_CM_SHORTAGE);
  xbd_requeue_bio(sc, bp);
  return (((void*)0));
 }

 if (gnttab_alloc_grant_references(sc->xbd_max_request_segments,
     &cm->cm_gref_head) != 0) {
  gnttab_request_free_callback(&sc->xbd_callback,
      xbd_restart_queue_callback, sc,
      sc->xbd_max_request_segments);
  xbd_freeze(sc, XBDF_GNT_SHORTAGE);
  xbd_requeue_bio(sc, bp);
  xbd_enqueue_cm(cm, XBD_Q_FREE);
  return (((void*)0));
 }

 cm->cm_bp = bp;
 cm->cm_sector_number = (blkif_sector_t)bp->bio_pblkno;

 switch (bp->bio_cmd) {
 case 129:
  cm->cm_operation = BLKIF_OP_READ;
  break;
 case 128:
  cm->cm_operation = BLKIF_OP_WRITE;
  if ((bp->bio_flags & BIO_ORDERED) != 0) {
   if ((sc->xbd_flags & XBDF_BARRIER) != 0) {
    cm->cm_operation = BLKIF_OP_WRITE_BARRIER;
   } else {



    cm->cm_flags |= XBDCF_Q_FREEZE;
    if (xbd_queue_length(sc, XBD_Q_BUSY) != 0) {




     xbd_freeze(sc, XBDF_WAIT_IDLE);
     xbd_requeue_cm(cm, XBD_Q_READY);
     return (((void*)0));
    }
   }
  }
  break;
 case 130:
  if ((sc->xbd_flags & XBDF_FLUSH) != 0)
   cm->cm_operation = BLKIF_OP_FLUSH_DISKCACHE;
  else if ((sc->xbd_flags & XBDF_BARRIER) != 0)
   cm->cm_operation = BLKIF_OP_WRITE_BARRIER;
  else
   panic("flush request, but no flush support available");
  break;
 default:
  panic("unknown bio command %d", bp->bio_cmd);
 }

 return (cm);
}
