
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct scsi_sense_data {int dummy; } ;
struct ciss_softc {int ciss_flags; } ;
struct ciss_request {scalar_t__ cr_private; struct ciss_command* cr_cc; struct ciss_softc* cr_sc; } ;
struct ciss_error_info {int * sense_info; int residual_count; scalar_t__ sense_length; } ;
struct ciss_command {int * sg; } ;
struct TYPE_2__ {int status; int path; } ;
struct ccb_scsiio {int scsi_status; TYPE_1__ ccb_h; scalar_t__ sense_resid; scalar_t__ sense_len; int resid; int sense_data; } ;


 int CAM_AUTOSNS_VALID ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_BUSY ;
 int CAM_SCSI_STATUS_ERROR ;
 int CISS_FLAG_BUSY ;



 int SSD_FULL_SIZE ;
 int bcopy (int *,int *,scalar_t__) ;
 int bzero (int *,int ) ;
 int ciss_cam_complete_fixup (struct ciss_softc*,struct ccb_scsiio*) ;
 int ciss_release_request (struct ciss_request*) ;
 int ciss_report_request (struct ciss_request*,int*,int*) ;
 int debug (int,char*,...) ;
 int debug_called (int) ;
 int scsi_get_sense_key (struct scsi_sense_data*,scalar_t__,int) ;
 int xpt_done (union ccb*) ;
 int xpt_path_sim (int ) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void
ciss_cam_complete(struct ciss_request *cr)
{
    struct ciss_softc *sc;
    struct ciss_command *cc;
    struct ciss_error_info *ce;
    struct ccb_scsiio *csio;
    int scsi_status;
    int command_status;

    debug_called(2);

    sc = cr->cr_sc;
    cc = cr->cr_cc;
    ce = (struct ciss_error_info *)&(cc->sg[0]);
    csio = (struct ccb_scsiio *)cr->cr_private;




    ciss_report_request(cr, &command_status, &scsi_status);
    csio->scsi_status = scsi_status;




    switch(scsi_status) {

    case -1:
 debug(0, "adapter error");
 csio->ccb_h.status |= CAM_REQ_CMP_ERR;
 break;


    case 128:
 debug(2, "SCSI_STATUS_OK");
 csio->ccb_h.status |= CAM_REQ_CMP;
 break;


    case 129:
 debug(0, "SCSI_STATUS_CHECK_COND  sense size %d  resid %d\n",
       ce->sense_length, ce->residual_count);
 bzero(&csio->sense_data, SSD_FULL_SIZE);
 bcopy(&ce->sense_info[0], &csio->sense_data, ce->sense_length);
 if (csio->sense_len > ce->sense_length)
  csio->sense_resid = csio->sense_len - ce->sense_length;
 else
  csio->sense_resid = 0;
 csio->resid = ce->residual_count;
 csio->ccb_h.status |= CAM_SCSI_STATUS_ERROR | CAM_AUTOSNS_VALID;







 break;

    case 130:
 debug(0, "SCSI_STATUS_BUSY");
 csio->ccb_h.status |= CAM_SCSI_BUSY;
 break;

    default:
 debug(0, "unknown status 0x%x", csio->scsi_status);
 csio->ccb_h.status |= CAM_REQ_CMP_ERR;
 break;
    }


    ciss_cam_complete_fixup(sc, csio);

    ciss_release_request(cr);
    if (sc->ciss_flags & CISS_FLAG_BUSY) {
 sc->ciss_flags &= ~CISS_FLAG_BUSY;
 if (csio->ccb_h.status & CAM_RELEASE_SIMQ)
     xpt_release_simq(xpt_path_sim(csio->ccb_h.path), 0);
 else
     csio->ccb_h.status |= CAM_RELEASE_SIMQ;
    }
    xpt_done((union ccb *)csio);
}
