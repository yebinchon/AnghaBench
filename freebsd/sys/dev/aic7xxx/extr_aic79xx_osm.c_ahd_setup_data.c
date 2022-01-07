
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct scb {TYPE_6__* io_ctx; int dmamap; struct hardware_scb* hscb; } ;
struct TYPE_7__ {int cdblen; int cdbptr; } ;
struct TYPE_8__ {int cdb; TYPE_1__ cdb_from_host; } ;
struct TYPE_9__ {TYPE_2__ idata; } ;
struct hardware_scb {int cdb_len; TYPE_3__ shared_data; } ;
struct TYPE_10__ {scalar_t__ cdb_bytes; scalar_t__ cdb_ptr; } ;
struct ccb_hdr {scalar_t__ func_code; int flags; } ;
struct ccb_scsiio {TYPE_4__ cdb_io; int cdb_len; scalar_t__ sense_resid; scalar_t__ resid; struct ccb_hdr ccb_h; } ;
struct cam_sim {int dummy; } ;
struct ahd_softc {int buffer_dmat; } ;
struct TYPE_11__ {int status; } ;
struct TYPE_12__ {TYPE_5__ ccb_h; } ;


 int CAM_CDB_PHYS ;
 int CAM_CDB_POINTER ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQ_INVALID ;
 int EINPROGRESS ;
 int MAX_CDB_LEN ;
 int SCB_CDB_LEN_PTR ;
 scalar_t__ XPT_SCSI_IO ;
 int ahd_execute_scb ;
 int ahd_free_scb (struct ahd_softc*,struct scb*) ;
 int aic_htole64 (uintptr_t) ;
 int aic_set_transaction_status (struct scb*,int ) ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct scb*,int ) ;
 int memcpy (int ,scalar_t__,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_simq (struct cam_sim*,int) ;

__attribute__((used)) static void
ahd_setup_data(struct ahd_softc *ahd, struct cam_sim *sim,
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

   if (hscb->cdb_len > MAX_CDB_LEN
    && (ccb_h->flags & CAM_CDB_PHYS) == 0) {






    aic_set_transaction_status(scb,
          CAM_REQ_INVALID);
    ahd_free_scb(ahd, scb);
    xpt_done((union ccb *)csio);
    return;
   }
   if ((ccb_h->flags & CAM_CDB_PHYS) != 0) {
    hscb->shared_data.idata.cdb_from_host.cdbptr =
       aic_htole64((uintptr_t)csio->cdb_io.cdb_ptr);
    hscb->shared_data.idata.cdb_from_host.cdblen =
       csio->cdb_len;
    hscb->cdb_len |= SCB_CDB_LEN_PTR;
   } else {
    memcpy(hscb->shared_data.idata.cdb,
           csio->cdb_io.cdb_ptr,
           hscb->cdb_len);
   }
  } else {
   if (hscb->cdb_len > MAX_CDB_LEN) {

    aic_set_transaction_status(scb,
          CAM_REQ_INVALID);
    ahd_free_scb(ahd, scb);
    xpt_done((union ccb *)csio);
    return;
   }
   memcpy(hscb->shared_data.idata.cdb,
          csio->cdb_io.cdb_bytes, hscb->cdb_len);
  }
 }

 error = bus_dmamap_load_ccb(ahd->buffer_dmat,
        scb->dmamap,
        (union ccb *)csio,
        ahd_execute_scb,
        scb, 0);
 if (error == EINPROGRESS) {




  xpt_freeze_simq(sim, 1);
  scb->io_ctx->ccb_h.status |= CAM_RELEASE_SIMQ;
 }
}
