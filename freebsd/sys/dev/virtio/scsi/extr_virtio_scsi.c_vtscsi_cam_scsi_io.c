
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_scsiio {scalar_t__ cdb_len; } ;
struct ccb_hdr {int flags; void* status; } ;
union ccb {struct ccb_scsiio csio; struct ccb_hdr ccb_h; } ;
struct vtscsi_softc {int vtscsi_flags; } ;
struct cam_sim {int dummy; } ;


 int CAM_DIR_BOTH ;
 int CAM_DIR_MASK ;
 void* CAM_REQ_INVALID ;
 int EINVAL ;
 scalar_t__ VIRTIO_SCSI_CDB_SIZE ;
 int VTSCSI_ERROR ;
 int VTSCSI_FLAG_BIDIRECTIONAL ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,int,union ccb*,void*) ;
 int vtscsi_start_scsi_cmd (struct vtscsi_softc*,union ccb*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vtscsi_cam_scsi_io(struct vtscsi_softc *sc, struct cam_sim *sim,
    union ccb *ccb)
{
 struct ccb_hdr *ccbh;
 struct ccb_scsiio *csio;
 int error;

 ccbh = &ccb->ccb_h;
 csio = &ccb->csio;

 if (csio->cdb_len > VIRTIO_SCSI_CDB_SIZE) {
  error = EINVAL;
  ccbh->status = CAM_REQ_INVALID;
  goto done;
 }

 if ((ccbh->flags & CAM_DIR_MASK) == CAM_DIR_BOTH &&
     (sc->vtscsi_flags & VTSCSI_FLAG_BIDIRECTIONAL) == 0) {
  error = EINVAL;
  ccbh->status = CAM_REQ_INVALID;
  goto done;
 }

 error = vtscsi_start_scsi_cmd(sc, ccb);

done:
 if (error) {
  vtscsi_dprintf(sc, VTSCSI_ERROR,
      "error=%d ccb=%p status=%#x\n", error, ccb, ccbh->status);
  xpt_done(ccb);
 }
}
