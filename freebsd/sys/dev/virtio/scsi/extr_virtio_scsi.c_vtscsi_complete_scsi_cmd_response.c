
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int dummy; } ;
struct virtio_scsi_cmd_resp {scalar_t__ status; scalar_t__ sense_len; int sense; int resid; } ;
struct ccb_scsiio {scalar_t__ scsi_status; scalar_t__ sense_len; scalar_t__ sense_resid; int resid; int sense_data; } ;
typedef int cam_status ;


 int CAM_AUTOSNS_VALID ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;
 scalar_t__ SCSI_STATUS_OK ;
 int VTSCSI_ERROR ;
 int VTSCSI_TRACE ;
 int memcpy (int *,int ,scalar_t__) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,struct ccb_scsiio*,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static cam_status
vtscsi_complete_scsi_cmd_response(struct vtscsi_softc *sc,
    struct ccb_scsiio *csio, struct virtio_scsi_cmd_resp *cmd_resp)
{
 cam_status status;

 csio->scsi_status = cmd_resp->status;
 csio->resid = cmd_resp->resid;

 if (csio->scsi_status == SCSI_STATUS_OK)
  status = CAM_REQ_CMP;
 else
  status = CAM_SCSI_STATUS_ERROR;

 if (cmd_resp->sense_len > 0) {
  status |= CAM_AUTOSNS_VALID;

  if (cmd_resp->sense_len < csio->sense_len)
   csio->sense_resid = csio->sense_len -
       cmd_resp->sense_len;
  else
   csio->sense_resid = 0;

  memcpy(&csio->sense_data, cmd_resp->sense,
      csio->sense_len - csio->sense_resid);
 }

 vtscsi_dprintf(sc, status == CAM_REQ_CMP ? VTSCSI_TRACE : VTSCSI_ERROR,
     "ccb=%p scsi_status=%#x resid=%u sense_resid=%u\n",
     csio, csio->scsi_status, csio->resid, csio->sense_resid);

 return (status);
}
