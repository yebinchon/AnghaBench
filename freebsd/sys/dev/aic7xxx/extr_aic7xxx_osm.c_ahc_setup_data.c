
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct scb {TYPE_4__* io_ctx; int dmamap; int flags; struct hardware_scb* hscb; } ;
struct TYPE_5__ {int cdb; } ;
struct hardware_scb {int cdb_len; TYPE_1__ shared_data; int cdb32; } ;
struct TYPE_6__ {int cdb_bytes; int cdb_ptr; } ;
struct ccb_hdr {scalar_t__ func_code; int flags; } ;
struct ccb_scsiio {int cdb_len; TYPE_2__ cdb_io; scalar_t__ sense_resid; scalar_t__ resid; struct ccb_hdr ccb_h; } ;
struct cam_sim {int dummy; } ;
struct ahc_softc {int buffer_dmat; } ;
struct TYPE_7__ {int status; } ;
struct TYPE_8__ {TYPE_3__ ccb_h; } ;


 int CAM_CDB_PHYS ;
 int CAM_CDB_POINTER ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQ_INVALID ;
 int EINPROGRESS ;
 int SCB_CDB32_PTR ;
 scalar_t__ XPT_SCSI_IO ;
 int ahc_execute_scb ;
 int ahc_free_scb (struct ahc_softc*,struct scb*) ;
 int aic_set_transaction_status (struct scb*,int ) ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct scb*,int ) ;
 int memcpy (int ,int ,int) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_simq (struct cam_sim*,int) ;

__attribute__((used)) static void
ahc_setup_data(struct ahc_softc *ahc, struct cam_sim *sim,
        struct ccb_scsiio *csio, struct scb *scb)
{
 struct hardware_scb *hscb;
 struct ccb_hdr *ccb_h;
 int error;

 hscb = scb->hscb;
 ccb_h = &csio->ccb_h;

 csio->resid = 0;
 csio->sense_resid = 0;
 if (ccb_h->func_code == XPT_SCSI_IO) {
  hscb->cdb_len = csio->cdb_len;
  if ((ccb_h->flags & CAM_CDB_POINTER) != 0) {

   if (hscb->cdb_len > sizeof(hscb->cdb32)
    || (ccb_h->flags & CAM_CDB_PHYS) != 0) {
    aic_set_transaction_status(scb,
          CAM_REQ_INVALID);
    ahc_free_scb(ahc, scb);
    xpt_done((union ccb *)csio);
    return;
   }
   if (hscb->cdb_len > 12) {
    memcpy(hscb->cdb32,
           csio->cdb_io.cdb_ptr,
           hscb->cdb_len);
    scb->flags |= SCB_CDB32_PTR;
   } else {
    memcpy(hscb->shared_data.cdb,
           csio->cdb_io.cdb_ptr,
           hscb->cdb_len);
   }
  } else {
   if (hscb->cdb_len > 12) {
    memcpy(hscb->cdb32, csio->cdb_io.cdb_bytes,
           hscb->cdb_len);
    scb->flags |= SCB_CDB32_PTR;
   } else {
    memcpy(hscb->shared_data.cdb,
           csio->cdb_io.cdb_bytes,
           hscb->cdb_len);
   }
  }
 }

 error = bus_dmamap_load_ccb(ahc->buffer_dmat,
        scb->dmamap,
        (union ccb *)csio,
        ahc_execute_scb,
        scb,
        0);
 if (error == EINPROGRESS) {






  xpt_freeze_simq(sim, 1);
  scb->io_ctx->ccb_h.status |= CAM_RELEASE_SIMQ;
 }
}
