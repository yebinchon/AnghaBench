
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uint8_t ;
struct TYPE_12__ {int status; } ;
struct ccb_scsiio {unsigned int sense_len; unsigned int sense_resid; TYPE_2__ ccb_h; int sense_data; int scsi_status; int resid; } ;
struct TYPE_13__ {TYPE_9__* dvp; int * softs; TYPE_1__* cm_ccb; int status; } ;
typedef TYPE_3__ rcb_t ;
typedef int pqisrc_softstate_t ;
struct TYPE_14__ {int service_resp; int status; scalar_t__ data_pres; int * data; int data_len; int resd_count; } ;
typedef TYPE_4__ aio_path_error_info_elem_t ;
struct TYPE_15__ {int offload_enabled; } ;
struct TYPE_11__ {int csio; } ;


 int CAM_AUTOSNS_VALID ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_ABORTED ;
 void* CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;
 scalar_t__ DATA_PRESENT_SENSE_DATA ;
 int DBG_ERR_BTL (TYPE_9__*,char*,unsigned int) ;
 int DBG_IO (char*) ;
 int DBG_WARN_BTL (TYPE_9__*,char*) ;
 unsigned int LE_16 (int ) ;
 int LE_32 (int ) ;







 int PQI_AIO_STATUS_CHECK_CONDITION ;






 int REQUEST_SUCCESS ;
 int memcpy (int *,int *,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int panic (char*) ;
 int pqi_release_camq (TYPE_3__*) ;
 int pqi_unmap_request (TYPE_3__*) ;
 int smartpqi_fix_ld_inquiry (int *,struct ccb_scsiio*) ;
 int xpt_done (union ccb*) ;

void os_aio_response_error(rcb_t *rcb, aio_path_error_info_elem_t *err_info)
{
 struct ccb_scsiio *csio;
 pqisrc_softstate_t *softs;

 DBG_IO("IN\n");

        if (rcb == ((void*)0))
  panic("rcb is null");

 rcb->status = REQUEST_SUCCESS;
 csio = (struct ccb_scsiio *)&rcb->cm_ccb->csio;
 if (csio == ((void*)0))
                panic("csio is null");

 softs = rcb->softs;

 switch (err_info->service_resp) {
  case 140:
   csio->ccb_h.status = err_info->status;
   break;
  case 139:
   switch(err_info->status) {
    case 132:
     csio->ccb_h.status = CAM_REQ_ABORTED;
     DBG_WARN_BTL(rcb->dvp, "IO aborted\n");
     break;
    case 128:
     csio->ccb_h.status = CAM_REQ_CMP;
     csio->resid =
      LE_32(err_info->resd_count);
     break;
    case 129:
     csio->ccb_h.status = CAM_REQ_CMP;
     break;
    case 134:
     DBG_WARN_BTL(rcb->dvp,"AIO Path Disabled\n");
     rcb->dvp->offload_enabled = 0;
     csio->ccb_h.status |= CAM_REQUEUE_REQ;
     break;
    case 131:
    case 130:
    case 133:
    default:
     DBG_WARN_BTL(rcb->dvp,"IO Error/Invalid/No device\n");
     csio->ccb_h.status |=
      CAM_SCSI_STATUS_ERROR;
     break;
   }
   break;
  case 138:
  case 135:
   csio->ccb_h.status = CAM_REQ_CMP;
   break;
  case 136:
  case 137:
   DBG_WARN_BTL(rcb->dvp,"TMF rejected/Incorrect Lun\n");
   csio->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
   break;
  default:
   DBG_WARN_BTL(rcb->dvp,"Scsi Status Error\n");
   csio->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
   break;
 }
 if(err_info->data_pres == DATA_PRESENT_SENSE_DATA ) {
  csio->scsi_status = PQI_AIO_STATUS_CHECK_CONDITION;
  uint8_t *sense_data = ((void*)0);
  unsigned sense_data_len = LE_16(err_info->data_len);
  if (sense_data_len)
   sense_data = err_info->data;
  DBG_ERR_BTL(rcb->dvp, "SCSI_STATUS_CHECK_COND  sense size %u\n",
   sense_data_len);
  memset(&csio->sense_data, 0, csio->sense_len);
  if (sense_data)
   memcpy(&csio->sense_data, sense_data, ((sense_data_len >
                         csio->sense_len) ? csio->sense_len : sense_data_len));
  if (csio->sense_len > sense_data_len)
   csio->sense_resid = csio->sense_len - sense_data_len;
         else
   csio->sense_resid = 0;
  csio->ccb_h.status = CAM_SCSI_STATUS_ERROR | CAM_AUTOSNS_VALID;
 }

 smartpqi_fix_ld_inquiry(softs, csio);
 pqi_release_camq(rcb);
 pqi_unmap_request(rcb);
 xpt_done((union ccb *)csio);
 DBG_IO("OUT\n");
}
