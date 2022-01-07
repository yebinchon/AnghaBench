
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct xbd_softc {size_t xbd_max_request_size; int xbd_dev; int xbd_io_lock; int xbd_max_request_segments; } ;
struct xbd_command {size_t cm_datalen; size_t cm_sector_number; scalar_t__ cm_status; int cm_complete; int cm_operation; void* cm_data; int cm_gref_head; } ;
struct disk {size_t d_sectorsize; struct xbd_softc* d_drv1; } ;
typedef size_t off_t ;


 int BLKIF_OP_WRITE ;
 scalar_t__ BLKIF_RSP_OKAY ;
 int EBUSY ;
 int EIO ;
 int XBD_Q_COMPLETE ;
 int XBD_Q_FREE ;
 int XBD_Q_READY ;
 int device_printf (int ,char*,...) ;
 scalar_t__ gnttab_alloc_grant_references (int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct xbd_command* xbd_dequeue_cm (struct xbd_softc*,int ) ;
 int xbd_dump_complete ;
 int xbd_enqueue_cm (struct xbd_command*,int ) ;
 int xbd_free_command (struct xbd_command*) ;
 int xbd_quiesce (struct xbd_softc*) ;
 int xbd_startio (struct xbd_softc*) ;

__attribute__((used)) static int
xbd_dump(void *arg, void *virtual, vm_offset_t physical, off_t offset,
    size_t length)
{
 struct disk *dp = arg;
 struct xbd_softc *sc = dp->d_drv1;
 struct xbd_command *cm;
 size_t chunk;
 int sbp;
 int rc = 0;

 if (length == 0)
  return (0);

 xbd_quiesce(sc);





 mtx_lock(&sc->xbd_io_lock);


 for (sbp=0; length > 0; sbp++) {
  cm = xbd_dequeue_cm(sc, XBD_Q_FREE);
  if (cm == ((void*)0)) {
   mtx_unlock(&sc->xbd_io_lock);
   device_printf(sc->xbd_dev, "dump: no more commands?\n");
   return (EBUSY);
  }

  if (gnttab_alloc_grant_references(sc->xbd_max_request_segments,
      &cm->cm_gref_head) != 0) {
   xbd_free_command(cm);
   mtx_unlock(&sc->xbd_io_lock);
   device_printf(sc->xbd_dev, "no more grant allocs?\n");
   return (EBUSY);
  }

  chunk = length > sc->xbd_max_request_size ?
      sc->xbd_max_request_size : length;
  cm->cm_data = virtual;
  cm->cm_datalen = chunk;
  cm->cm_operation = BLKIF_OP_WRITE;
  cm->cm_sector_number = offset / dp->d_sectorsize;
  cm->cm_complete = xbd_dump_complete;

  xbd_enqueue_cm(cm, XBD_Q_READY);

  length -= chunk;
  offset += chunk;
  virtual = (char *) virtual + chunk;
 }


 xbd_startio(sc);
 mtx_unlock(&sc->xbd_io_lock);


 xbd_quiesce(sc);


 while ((cm = xbd_dequeue_cm(sc, XBD_Q_COMPLETE)) != ((void*)0)) {
  if (cm->cm_status != BLKIF_RSP_OKAY) {
   device_printf(sc->xbd_dev,
       "Dump I/O failed at sector %jd\n",
       cm->cm_sector_number);
   rc = EIO;
  }
  xbd_free_command(cm);
 }

 return (rc);
}
