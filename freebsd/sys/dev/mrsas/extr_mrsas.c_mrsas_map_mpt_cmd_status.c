
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sense_len; int scsi_status; int sense_data; } ;
struct TYPE_3__ {int status; int target_lun; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct mrsas_softc {int mrsas_dev; } ;
struct mrsas_mpt_cmd {struct mrsas_softc* sc; } ;


 int CAM_AUTOSNS_VALID ;
 int CAM_DEV_NOT_THERE ;
 int CAM_LUN_INVALID ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_STATUS_ERROR ;






 int device_printf (int ,char*,int) ;
 int memcpy (int*,int*,int) ;

void
mrsas_map_mpt_cmd_status(struct mrsas_mpt_cmd *cmd, union ccb *ccb_ptr, u_int8_t status,
    u_int8_t extStatus, u_int32_t data_length, u_int8_t *sense)
{
 struct mrsas_softc *sc = cmd->sc;
 u_int8_t *sense_data;

 switch (status) {
 case 130:
  ccb_ptr->ccb_h.status = CAM_REQ_CMP;
  break;
 case 128:
 case 129:
  ccb_ptr->ccb_h.status = CAM_SCSI_STATUS_ERROR;
  sense_data = (u_int8_t *)&ccb_ptr->csio.sense_data;
  if (sense_data) {

   memcpy(sense_data, sense, 18);
   ccb_ptr->csio.sense_len = 18;
   ccb_ptr->ccb_h.status |= CAM_AUTOSNS_VALID;
  }
  break;
 case 131:
 case 132:
  if (ccb_ptr->ccb_h.target_lun)
   ccb_ptr->ccb_h.status |= CAM_LUN_INVALID;
  else
   ccb_ptr->ccb_h.status |= CAM_DEV_NOT_THERE;
  break;
 case 133:
  ccb_ptr->ccb_h.status |= CAM_REQUEUE_REQ;
  break;
 default:
  device_printf(sc->mrsas_dev, "FW cmd complete status %x\n", status);
  ccb_ptr->ccb_h.status = CAM_REQ_CMP_ERR;
  ccb_ptr->csio.scsi_status = status;
 }
 return;
}
