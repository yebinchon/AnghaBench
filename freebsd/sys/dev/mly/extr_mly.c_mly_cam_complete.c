
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int u_int8_t ;
struct scsi_inquiry_data {int revision; int product; int vendor; } ;
struct mly_softc {scalar_t__ mly_qfrzn_cnt; struct mly_btl** mly_btl; } ;
struct mly_command {int mc_status; int mc_resid; int mc_sense; int mc_packet; scalar_t__ mc_private; struct mly_softc* mc_sc; } ;
struct mly_btl {int mb_flags; int mb_state; int mb_type; } ;
struct TYPE_6__ {TYPE_1__* entries; } ;
struct TYPE_8__ {int target_id; int flags; int status; TYPE_2__ sim_priv; } ;
struct TYPE_7__ {int * cdb_bytes; int * cdb_ptr; } ;
struct ccb_scsiio {int scsi_status; TYPE_4__ ccb_h; int resid; int sense_len; int sense_data; TYPE_3__ cdb_io; scalar_t__ data_ptr; } ;
struct TYPE_5__ {int field; } ;


 int CAM_AUTOSNS_VALID ;
 int CAM_CDB_POINTER ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_BUSY ;
 int CAM_SCSI_STATUS_ERROR ;
 int INQUIRY ;
 int MLY_BTL_LOGICAL ;



 int SSD_FULL_SIZE ;
 int bcopy (int ,int *,int ) ;
 int bzero (int *,int ) ;
 int debug (int,char*,...) ;
 int debug_called (int) ;
 char* mly_describe_code (int ,int ) ;
 int mly_release_command (struct mly_command*) ;
 int mly_table_device_state ;
 int mly_table_device_type ;
 int padstr (int ,char*,int) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
mly_cam_complete(struct mly_command *mc)
{
    struct mly_softc *sc = mc->mc_sc;
    struct ccb_scsiio *csio = (struct ccb_scsiio *)mc->mc_private;
    struct scsi_inquiry_data *inq = (struct scsi_inquiry_data *)csio->data_ptr;
    struct mly_btl *btl;
    u_int8_t cmd;
    int bus, target;

    debug_called(2);

    csio->scsi_status = mc->mc_status;
    switch(mc->mc_status) {
    case 128:




 bus = csio->ccb_h.sim_priv.entries[0].field;
 target = csio->ccb_h.target_id;

 if (sc->mly_btl[bus][target].mb_flags & MLY_BTL_LOGICAL) {
     if (csio->ccb_h.flags & CAM_CDB_POINTER) {
  cmd = *csio->cdb_io.cdb_ptr;
     } else {
  cmd = csio->cdb_io.cdb_bytes[0];
     }
     if (cmd == INQUIRY) {
  btl = &sc->mly_btl[bus][target];
  padstr(inq->vendor, mly_describe_code(mly_table_device_type, btl->mb_type), 8);
  padstr(inq->product, mly_describe_code(mly_table_device_state, btl->mb_state), 16);
  padstr(inq->revision, "", 4);
     }
 }

 debug(2, "SCSI_STATUS_OK");
 csio->ccb_h.status = CAM_REQ_CMP;
 break;

    case 129:
 debug(1, "SCSI_STATUS_CHECK_COND  sense %d  resid %d", mc->mc_sense, mc->mc_resid);
 csio->ccb_h.status = CAM_SCSI_STATUS_ERROR;
 bzero(&csio->sense_data, SSD_FULL_SIZE);
 bcopy(mc->mc_packet, &csio->sense_data, mc->mc_sense);
 csio->sense_len = mc->mc_sense;
 csio->ccb_h.status |= CAM_AUTOSNS_VALID;
 csio->resid = mc->mc_resid;
 break;

    case 130:
 debug(1, "SCSI_STATUS_BUSY");
 csio->ccb_h.status = CAM_SCSI_BUSY;
 break;

    default:
 debug(1, "unknown status 0x%x", csio->scsi_status);
 csio->ccb_h.status = CAM_REQ_CMP_ERR;
 break;
    }

    if (sc->mly_qfrzn_cnt) {
 csio->ccb_h.status |= CAM_RELEASE_SIMQ;
 sc->mly_qfrzn_cnt--;
    }

    xpt_done((union ccb *)csio);
    mly_release_command(mc);
}
