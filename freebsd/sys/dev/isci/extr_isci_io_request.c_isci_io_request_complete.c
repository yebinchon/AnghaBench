
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int status; int target_lun; int path; int target_id; int path_id; int func_code; } ;
struct ccb_scsiio {int scsi_status; int sense_data; scalar_t__ sense_len; scalar_t__ sense_resid; scalar_t__ dxfer_len; scalar_t__ resid; } ;
struct TYPE_9__ {scalar_t__ smp_response_len; int * smp_response; } ;
union ccb {TYPE_6__ ccb_h; struct ccb_scsiio csio; TYPE_2__ smpio; } ;
typedef scalar_t__ uint32_t ;
struct TYPE_11__ {int flags; int func_code; } ;
struct ccb_relsim {int openings; int release_flags; TYPE_4__ ccb_h; } ;
struct cam_path {int dummy; } ;
struct ISCI_REQUEST {int dummy; } ;
struct ISCI_REMOTE_DEVICE {scalar_t__ frozen_lun_mask; int queued_ccbs; union ccb* queued_ccb_in_progress; int index; } ;
struct TYPE_8__ {int dma_map; int dma_tag; int timer; } ;
struct ISCI_IO_REQUEST {union ccb* ccb; TYPE_1__ parent; int sci_object; } ;
struct ISCI_CONTROLLER {scalar_t__ is_frozen; int sim; int request_pool; } ;
struct TYPE_12__ {int tqe; } ;
struct TYPE_10__ {void* data; int status; int sense_data_length; } ;
typedef TYPE_3__ SCI_SSP_RESPONSE_IU_T ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_IO_STATUS ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef void* BOOL ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_AUTOSNS_VALID ;
 int CAM_DEV_NOT_THERE ;
 int CAM_DEV_QFREEZE ;
 int CAM_DEV_QFRZN ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_REQ_TERMIO ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_SIM_QUEUED ;
 int CAM_STATUS_MASK ;
 void* FALSE ;
 int KASSERT (int,char*) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int RELSIM_ADJUST_OPENINGS ;
 int TAILQ_INSERT_TAIL (int *,TYPE_6__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_6__*,int ) ;
 scalar_t__ TRUE ;
 int XPT_REL_SIMQ ;
 int XPT_SMP_IO ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int cam_sim_path (int ) ;
 int isci_log_message (int,char*,char*,union ccb*,int ,...) ;
 int isci_remote_device_freeze_lun_queue (struct ISCI_REMOTE_DEVICE*,int ) ;
 int isci_remote_device_release_device_queue (struct ISCI_REMOTE_DEVICE*) ;
 int isci_remote_device_reset (struct ISCI_REMOTE_DEVICE*,int *) ;
 int memcpy (int *,void*,scalar_t__) ;
 scalar_t__ sci_object_get_association (int ) ;
 int sci_pool_put (int ,struct ISCI_REQUEST*) ;
 scalar_t__ sci_ssp_get_sense_data_length (int ) ;
 scalar_t__ scif_io_request_get_number_of_bytes_transferred (int ) ;
 void* scif_io_request_get_response_iu_address (int ) ;
 int scif_remote_device_get_max_queue_depth (int ) ;
 int scsi_extract_sense (int *,int*,int*,int*,int*) ;
 int scsiio_cdb_ptr (struct ccb_scsiio*) ;
 TYPE_5__ sim_links ;
 int xpt_action (union ccb*) ;
 int xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_freeze_devq (int ,int) ;
 int xpt_release_simq (int ,scalar_t__) ;
 int xpt_setup_ccb (TYPE_4__*,struct cam_path*,int) ;

void
isci_io_request_complete(SCI_CONTROLLER_HANDLE_T scif_controller,
    SCI_REMOTE_DEVICE_HANDLE_T remote_device,
    struct ISCI_IO_REQUEST *isci_request, SCI_IO_STATUS completion_status)
{
 struct ISCI_CONTROLLER *isci_controller;
 struct ISCI_REMOTE_DEVICE *isci_remote_device;
 union ccb *ccb;
 BOOL complete_ccb;
 struct ccb_scsiio *csio;

 complete_ccb = TRUE;
 isci_controller = (struct ISCI_CONTROLLER *) sci_object_get_association(scif_controller);
 isci_remote_device =
  (struct ISCI_REMOTE_DEVICE *) sci_object_get_association(remote_device);

 ccb = isci_request->ccb;
 csio = &ccb->csio;
 ccb->ccb_h.status &= ~CAM_STATUS_MASK;

 switch (completion_status) {
 case 130:
 case 129:
  ccb->ccb_h.status |= CAM_REQ_CMP;
  break;

 case 128:
  ccb->ccb_h.status |= CAM_REQ_CMP;
  ccb->csio.resid = ccb->csio.dxfer_len -
      scif_io_request_get_number_of_bytes_transferred(
          isci_request->sci_object);
  break;

 case 133:
 {
  SCI_SSP_RESPONSE_IU_T * response_buffer;
  uint32_t sense_length;
  int error_code, sense_key, asc, ascq;

  response_buffer = (SCI_SSP_RESPONSE_IU_T *)
      scif_io_request_get_response_iu_address(
          isci_request->sci_object);

  sense_length = sci_ssp_get_sense_data_length(
      response_buffer->sense_data_length);

  sense_length = MIN(csio->sense_len, sense_length);

  memcpy(&csio->sense_data, response_buffer->data, sense_length);

  csio->sense_resid = csio->sense_len - sense_length;
  csio->scsi_status = response_buffer->status;
  ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
  ccb->ccb_h.status |= CAM_AUTOSNS_VALID;
  scsi_extract_sense( &csio->sense_data, &error_code, &sense_key,
      &asc, &ascq );
  isci_log_message(1, "ISCI",
      "isci: bus=%x target=%x lun=%x cdb[0]=%x status=%x key=%x asc=%x ascq=%x\n",
      ccb->ccb_h.path_id, ccb->ccb_h.target_id,
      ccb->ccb_h.target_lun, scsiio_cdb_ptr(csio),
      csio->scsi_status, sense_key, asc, ascq);
  break;
 }

 case 135:
  isci_remote_device_reset(isci_remote_device, ((void*)0));
  ccb->ccb_h.status |= CAM_REQ_TERMIO;
  isci_log_message(0, "ISCI",
      "isci: bus=%x target=%x lun=%x cdb[0]=%x remote device reset required\n",
      ccb->ccb_h.path_id, ccb->ccb_h.target_id,
      ccb->ccb_h.target_lun, scsiio_cdb_ptr(csio));
  break;

 case 132:
  ccb->ccb_h.status |= CAM_REQ_TERMIO;
  isci_log_message(0, "ISCI",
      "isci: bus=%x target=%x lun=%x cdb[0]=%x terminated\n",
      ccb->ccb_h.path_id, ccb->ccb_h.target_id,
      ccb->ccb_h.target_lun, scsiio_cdb_ptr(csio));
  break;

 case 138:
 case 141:
  complete_ccb = FALSE;
  break;

 case 139:
  ccb->ccb_h.status |= CAM_DEV_NOT_THERE;
  break;

 case 137:
  {
   struct ccb_relsim ccb_relsim;
   struct cam_path *path;

   xpt_create_path(&path, ((void*)0),
       cam_sim_path(isci_controller->sim),
       isci_remote_device->index, 0);

   xpt_setup_ccb(&ccb_relsim.ccb_h, path, 5);
   ccb_relsim.ccb_h.func_code = XPT_REL_SIMQ;
   ccb_relsim.ccb_h.flags = CAM_DEV_QFREEZE;
   ccb_relsim.release_flags = RELSIM_ADJUST_OPENINGS;
   ccb_relsim.openings =
       scif_remote_device_get_max_queue_depth(remote_device);
   xpt_action((union ccb *)&ccb_relsim);
   xpt_free_path(path);
   complete_ccb = FALSE;
  }
  break;

 case 143:
 case 134:
 case 131:
 case 136:
 case 140:
 case 142:
 default:
  isci_log_message(1, "ISCI",
      "isci: bus=%x target=%x lun=%x cdb[0]=%x completion status=%x\n",
      ccb->ccb_h.path_id, ccb->ccb_h.target_id,
      ccb->ccb_h.target_lun, scsiio_cdb_ptr(csio),
      completion_status);
  ccb->ccb_h.status |= CAM_REQ_CMP_ERR;
  break;
 }

 callout_stop(&isci_request->parent.timer);
 bus_dmamap_sync(isci_request->parent.dma_tag,
     isci_request->parent.dma_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 bus_dmamap_unload(isci_request->parent.dma_tag,
     isci_request->parent.dma_map);

 isci_request->ccb = ((void*)0);

 sci_pool_put(isci_controller->request_pool,
     (struct ISCI_REQUEST *)isci_request);

 if (complete_ccb) {
  if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {






   ccb->ccb_h.status |= CAM_DEV_QFRZN;
   xpt_freeze_devq(ccb->ccb_h.path, 1);
  }

  if (ccb->ccb_h.status & CAM_SIM_QUEUED) {

   KASSERT(ccb == isci_remote_device->queued_ccb_in_progress,
       ("multiple internally queued ccbs in flight"));

   TAILQ_REMOVE(&isci_remote_device->queued_ccbs,
       &ccb->ccb_h, sim_links.tqe);
   ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
   isci_remote_device->queued_ccb_in_progress = ((void*)0);
  }

  if (isci_remote_device->frozen_lun_mask != 0) {
   isci_remote_device_release_device_queue(isci_remote_device);
  }

  xpt_done(ccb);

  if (isci_controller->is_frozen == TRUE) {
   isci_controller->is_frozen = FALSE;
   xpt_release_simq(isci_controller->sim, TRUE);
  }
 } else {
  isci_remote_device_freeze_lun_queue(isci_remote_device,
      ccb->ccb_h.target_lun);

  if (ccb->ccb_h.status & CAM_SIM_QUEUED) {

   KASSERT(ccb == isci_remote_device->queued_ccb_in_progress,
       ("multiple internally queued ccbs in flight"));







   isci_log_message(1, "ISCI", "already queued %p %x\n",
       ccb, scsiio_cdb_ptr(csio));

   isci_remote_device->queued_ccb_in_progress = ((void*)0);

  } else {
   isci_log_message(1, "ISCI", "queue %p %x\n", ccb,
       scsiio_cdb_ptr(csio));
   ccb->ccb_h.status |= CAM_SIM_QUEUED;

   TAILQ_INSERT_TAIL(&isci_remote_device->queued_ccbs,
       &ccb->ccb_h, sim_links.tqe);
  }
 }
}
