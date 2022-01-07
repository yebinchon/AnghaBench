
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ flags; int status; } ;
struct TYPE_10__ {struct ocs_softc* ccb_ocs_ptr; int * ccb_io_ptr; int path; int status; } ;
struct ccb_scsiio {scalar_t__ scsi_status; scalar_t__ resid; scalar_t__ dxfer_len; scalar_t__ sense_len; scalar_t__ sense_resid; TYPE_2__ ccb_h; int sense_data; } ;
union ccb {TYPE_3__ ccb_h; struct ccb_scsiio csio; } ;
typedef scalar_t__ uint32_t ;
struct ocs_softc {int buf_dmat; } ;
typedef scalar_t__ ocs_scsi_io_status_e ;
struct TYPE_12__ {scalar_t__ scsi_status; scalar_t__ residual; scalar_t__ response_wire_length; scalar_t__ sense_data_length; int sense_data; } ;
typedef TYPE_4__ ocs_scsi_cmd_resp_t ;
struct TYPE_9__ {int flags; int dmap; } ;
struct TYPE_13__ {TYPE_1__ tgt_io; } ;
typedef TYPE_5__ ocs_io_t ;
typedef int int32_t ;
typedef int cam_status ;
typedef int bus_dmasync_op_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAM_AUTOSNS_VALID ;
 int CAM_DATA_RUN_ERR ;
 int CAM_DEV_QFRZN ;
 scalar_t__ CAM_DIR_IN ;
 scalar_t__ CAM_DIR_MASK ;
 scalar_t__ CAM_DIR_NONE ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_SENSE_PHYS ;
 int CAM_SENSE_PTR ;
 int CAM_SIM_QUEUED ;
 int OCS_CAM_IO_F_DMAPPED ;
 scalar_t__ OCS_SCSI_STATUS_CHECK_RESPONSE ;
 scalar_t__ OCS_SCSI_STATUS_GOOD ;
 scalar_t__ SCSI_STATUS_OK ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ocs_memcpy (int *,int ,scalar_t__) ;
 int ocs_scsi_io_free (TYPE_5__*) ;
 int ocs_set_ccb_status (union ccb*,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;

__attribute__((used)) static int32_t ocs_scsi_initiator_io_cb(ocs_io_t *io,
     ocs_scsi_io_status_e scsi_status,
     ocs_scsi_cmd_resp_t *rsp,
     uint32_t flags, void *arg)
{
 union ccb *ccb = arg;
 struct ccb_scsiio *csio = &ccb->csio;
 struct ocs_softc *ocs = csio->ccb_h.ccb_ocs_ptr;
 uint32_t cam_dir = ccb->ccb_h.flags & CAM_DIR_MASK;
 cam_status ccb_status= CAM_REQ_CMP_ERR;

 if (CAM_DIR_NONE != cam_dir) {
  bus_dmasync_op_t op;

  if (CAM_DIR_IN == cam_dir) {
   op = BUS_DMASYNC_POSTREAD;
  } else {
   op = BUS_DMASYNC_POSTWRITE;
  }

  bus_dmamap_sync(ocs->buf_dmat, io->tgt_io.dmap, op);
  if (io->tgt_io.flags & OCS_CAM_IO_F_DMAPPED) {
   bus_dmamap_unload(ocs->buf_dmat, io->tgt_io.dmap);
  }
 }

 if (scsi_status == OCS_SCSI_STATUS_CHECK_RESPONSE) {
  csio->scsi_status = rsp->scsi_status;
  if (SCSI_STATUS_OK != rsp->scsi_status) {
   ccb_status = CAM_SCSI_STATUS_ERROR;
  }

  csio->resid = rsp->residual;
  if (rsp->residual > 0) {
   uint32_t length = rsp->response_wire_length;

   if (csio->dxfer_len == (length + csio->resid)) {
    ccb_status = CAM_REQ_CMP;
   }
  } else if (rsp->residual < 0) {
   ccb_status = CAM_DATA_RUN_ERR;
  }

  if ((rsp->sense_data_length) &&
   !(ccb->ccb_h.flags & (CAM_SENSE_PHYS | CAM_SENSE_PTR))) {
   uint32_t sense_len = 0;

   ccb->ccb_h.status |= CAM_AUTOSNS_VALID;
   if (rsp->sense_data_length < csio->sense_len) {
    csio->sense_resid =
     csio->sense_len - rsp->sense_data_length;
    sense_len = rsp->sense_data_length;
   } else {
    csio->sense_resid = 0;
    sense_len = csio->sense_len;
   }
   ocs_memcpy(&csio->sense_data, rsp->sense_data, sense_len);
  }
 } else if (scsi_status != OCS_SCSI_STATUS_GOOD) {
  ccb_status = CAM_REQ_CMP_ERR;
  ocs_set_ccb_status(ccb, ccb_status);
  csio->ccb_h.status |= CAM_DEV_QFRZN;
  xpt_freeze_devq(csio->ccb_h.path, 1);

 } else {
  ccb_status = CAM_REQ_CMP;
 }

 ocs_set_ccb_status(ccb, ccb_status);

 ocs_scsi_io_free(io);

 csio->ccb_h.ccb_io_ptr = ((void*)0);
 csio->ccb_h.ccb_ocs_ptr = ((void*)0);
 ccb->ccb_h.status &= ~CAM_SIM_QUEUED;

 xpt_done(ccb);

 return 0;
}
