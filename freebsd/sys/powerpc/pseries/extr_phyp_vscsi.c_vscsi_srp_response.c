
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ scsi_status; scalar_t__ resid; scalar_t__ sense_len; scalar_t__ sense_resid; int sense_data; } ;
struct TYPE_3__ {int flags; int status; int path; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct vscsi_xfer {union ccb* ccb; int dmamap; scalar_t__ srp_iu_offset; struct vscsi_softc* sc; } ;
struct vscsi_softc {int data_tag; scalar_t__ srp_iu_queue; } ;
struct vscsi_crq {scalar_t__ status; } ;
struct srp_rsp {scalar_t__ status; int flags; scalar_t__ data_in_resid; scalar_t__ data_out_resid; scalar_t__ sense_data_len; scalar_t__ response_data_len; int * data_payload; } ;
struct scsi_sense_data {int dummy; } ;


 int BUS_DMASYNC_POSTREAD ;
 int CAM_AUTOSNS_VALID ;
 int CAM_DEV_QFRZN ;

 int CAM_DIR_MASK ;

 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_STATUS_ERROR ;
 scalar_t__ SCSI_STATUS_OK ;
 int SRP_DIOVER ;
 int SRP_DIUNDER ;
 int SRP_DOOVER ;
 int SRP_DOUNDER ;
 int SRP_RSPVALID ;
 int SRP_SNSVALID ;
 size_t be32toh (scalar_t__) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (int *,int) ;
 int memcpy (int *,int *,int ) ;
 int min (size_t,scalar_t__) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static void
vscsi_srp_response(struct vscsi_xfer *xp, struct vscsi_crq *crq)
{
 union ccb *ccb = xp->ccb;
 struct vscsi_softc *sc = xp->sc;
 struct srp_rsp *rsp;
 uint32_t sense_len;


 rsp = (struct srp_rsp *)((uint8_t *)sc->srp_iu_queue +
     (uintptr_t)xp->srp_iu_offset);
 ccb->csio.scsi_status = rsp->status;
 if (ccb->csio.scsi_status == SCSI_STATUS_OK)
  ccb->ccb_h.status = CAM_REQ_CMP;
 else
  ccb->ccb_h.status = CAM_SCSI_STATUS_ERROR;






 if (ccb->ccb_h.status != CAM_REQ_CMP) {
  ccb->ccb_h.status |= CAM_DEV_QFRZN;
  xpt_freeze_devq(ccb->ccb_h.path, 1);
 }

 if (!(rsp->flags & SRP_RSPVALID))
  rsp->response_data_len = 0;
 if (!(rsp->flags & SRP_SNSVALID))
  rsp->sense_data_len = 0;
 if (!(rsp->flags & (SRP_DOOVER | SRP_DOUNDER)))
  rsp->data_out_resid = 0;
 if (!(rsp->flags & (SRP_DIOVER | SRP_DIUNDER)))
  rsp->data_in_resid = 0;

 if (rsp->flags & SRP_SNSVALID) {
  bzero(&ccb->csio.sense_data, sizeof(struct scsi_sense_data));
  ccb->ccb_h.status |= CAM_AUTOSNS_VALID;
  sense_len = min(be32toh(rsp->sense_data_len),
      ccb->csio.sense_len);
  memcpy(&ccb->csio.sense_data,
      &rsp->data_payload[be32toh(rsp->response_data_len)],
      sense_len);
  ccb->csio.sense_resid = ccb->csio.sense_len -
      be32toh(rsp->sense_data_len);
 }

 switch (ccb->ccb_h.flags & CAM_DIR_MASK) {
 case 128:
  ccb->csio.resid = rsp->data_out_resid;
  break;
 case 129:
  ccb->csio.resid = rsp->data_in_resid;
  break;
 }

 bus_dmamap_sync(sc->data_tag, xp->dmamap, BUS_DMASYNC_POSTREAD);
 bus_dmamap_unload(sc->data_tag, xp->dmamap);
 xpt_done(ccb);
 xp->ccb = ((void*)0);
}
