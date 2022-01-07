
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ flags; int status; } ;
struct TYPE_11__ {struct ocs_softc* ccb_ocs_ptr; } ;
struct ccb_scsiio {int sense_len; int sense_data; TYPE_1__ ccb_h; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_scsiio csio; } ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct ocs_softc {int buf_dmat; } ;
typedef int ocs_scsi_io_status_e ;
struct TYPE_14__ {int scsi_status; scalar_t__ residual; int sense_data_length; int * sense_data; int member_0; } ;
typedef TYPE_4__ ocs_scsi_cmd_resp_t ;
struct TYPE_13__ {int flags; int state; scalar_t__ sendresp; int dmap; } ;
struct TYPE_15__ {TYPE_3__ tgt_io; scalar_t__ transferred; scalar_t__ exp_xfer_len; } ;
typedef TYPE_5__ ocs_io_t ;
typedef int int32_t ;
typedef int bus_dmasync_op_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ CAM_DIR_IN ;
 scalar_t__ CAM_DIR_MASK ;
 scalar_t__ CAM_DIR_NONE ;
 int CAM_REQ_ABORTED ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SEND_SENSE ;
 int CAM_SEND_STATUS ;
 int CAM_SIM_QUEUED ;
 int OCS_CAM_IO_DATA_DONE ;
 int OCS_CAM_IO_F_ABORT_NOTIFY ;
 int OCS_CAM_IO_F_DMAPPED ;
 int OCS_CAM_IO_RESP ;


 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ocs_scsi_send_resp (TYPE_5__*,int ,TYPE_4__*,int (*) (TYPE_5__*,int,scalar_t__,void*),union ccb*) ;
 int ocs_set_ccb_status (union ccb*,int ) ;
 int ocs_target_io_free (TYPE_5__*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static int32_t ocs_scsi_target_io_cb(ocs_io_t *io,
    ocs_scsi_io_status_e scsi_status,
    uint32_t flags, void *arg)
{
 union ccb *ccb = arg;
 struct ccb_scsiio *csio = &ccb->csio;
 struct ocs_softc *ocs = csio->ccb_h.ccb_ocs_ptr;
 uint32_t cam_dir = ccb->ccb_h.flags & CAM_DIR_MASK;
 uint32_t io_is_done =
  (ccb->ccb_h.flags & CAM_SEND_STATUS) == CAM_SEND_STATUS;

 ccb->ccb_h.status &= ~CAM_SIM_QUEUED;

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

 if (io->tgt_io.sendresp) {
  io->tgt_io.sendresp = 0;
  ocs_scsi_cmd_resp_t resp = { 0 };
  io->tgt_io.state = OCS_CAM_IO_RESP;
  resp.scsi_status = scsi_status;
  if (ccb->ccb_h.flags & CAM_SEND_SENSE) {
   resp.sense_data = (uint8_t *)&csio->sense_data;
   resp.sense_data_length = csio->sense_len;
  }
  resp.residual = io->exp_xfer_len - io->transferred;

  return ocs_scsi_send_resp(io, 0, &resp, ocs_scsi_target_io_cb, ccb);
 }

 switch (scsi_status) {
 case 128:
  ocs_set_ccb_status(ccb, CAM_REQ_CMP);
  break;
 case 129:
  ocs_set_ccb_status(ccb, CAM_REQ_ABORTED);
  break;
 default:
  ocs_set_ccb_status(ccb, CAM_REQ_CMP_ERR);
 }

 if (io_is_done) {
  if ((io->tgt_io.flags & OCS_CAM_IO_F_ABORT_NOTIFY) == 0) {
   ocs_target_io_free(io);
  }
 } else {
  io->tgt_io.state = OCS_CAM_IO_DATA_DONE;


 }

 xpt_done(ccb);

 return 0;
}
