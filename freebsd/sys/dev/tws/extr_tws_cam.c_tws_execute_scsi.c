
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ccb_hdr {scalar_t__ target_id; int target_lun; int flags; int timeout; int status; } ;
struct TYPE_5__ {int cdb_bytes; int cdb_ptr; } ;
struct ccb_scsiio {int cdb_len; TYPE_1__ cdb_io; } ;
union ccb {struct ccb_hdr ccb_h; struct ccb_scsiio csio; } ;
typedef int u_int16_t ;
struct TYPE_8__ {int scsi_ios; } ;
struct tws_softc {TYPE_4__ stats; int sim_lock; } ;
struct tws_request {int request_id; int timeout; union ccb* ccb_ptr; int flags; union ccb* data; struct tws_command_packet* cmd_pkt; int cb; int type; } ;
struct TYPE_6__ {scalar_t__ unit; int sgl_offset; int lun_l4__req_id; int lun_h4__sgl_entries; int cdb; scalar_t__ status; int res__opcode; } ;
struct TYPE_7__ {TYPE_2__ pkt_a; } ;
struct tws_command_packet {TYPE_3__ cmd; } ;
typedef int int32_t ;


 int CAM_CDB_PHYS ;
 int CAM_CDB_POINTER ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 int CAM_DIR_OUT ;
 int CAM_LUN_INVALID ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_INVALID ;
 int CAM_SIM_QUEUED ;
 int CAM_TID_INVALID ;
 int MA_OWNED ;
 int SBT_1MS ;
 int TWS_DATA_CCB ;
 int TWS_DIR_IN ;
 int TWS_DIR_NONE ;
 int TWS_DIR_OUT ;
 int TWS_FW_CMD_EXECUTE_SCSI ;
 int TWS_MAX_NUM_LUNS ;
 scalar_t__ TWS_MAX_NUM_UNITS ;
 int TWS_REQ_TYPE_SCSI_IO ;
 int TWS_TRACE (struct tws_softc*,char*,scalar_t__,int) ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,scalar_t__,int) ;
 int bcopy (int ,int ,int) ;
 int callout_reset_sbt (int *,int,int ,int ,struct tws_request*,int ) ;
 int mtx_assert (int *,int ) ;
 struct tws_request* tws_get_request (struct tws_softc*,int ) ;
 int tws_map_request (struct tws_softc*,struct tws_request*) ;
 int tws_scsi_complete ;
 int tws_timeout ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static int32_t
tws_execute_scsi(struct tws_softc *sc, union ccb *ccb)
{
    struct tws_command_packet *cmd_pkt;
    struct tws_request *req;
    struct ccb_hdr *ccb_h = &(ccb->ccb_h);
    struct ccb_scsiio *csio = &(ccb->csio);
    int error;
    u_int16_t lun;

    mtx_assert(&sc->sim_lock, MA_OWNED);
    if (ccb_h->target_id >= TWS_MAX_NUM_UNITS) {
        TWS_TRACE_DEBUG(sc, "traget id too big", ccb_h->target_id, ccb_h->target_lun);
        ccb_h->status |= CAM_TID_INVALID;
        xpt_done(ccb);
        return(0);
    }
    if (ccb_h->target_lun >= TWS_MAX_NUM_LUNS) {
        TWS_TRACE_DEBUG(sc, "target lun 2 big", ccb_h->target_id, ccb_h->target_lun);
        ccb_h->status |= CAM_LUN_INVALID;
        xpt_done(ccb);
        return(0);
    }

    if(ccb_h->flags & CAM_CDB_PHYS) {
        TWS_TRACE_DEBUG(sc, "cdb phy", ccb_h->target_id, ccb_h->target_lun);
        ccb_h->status = CAM_REQ_INVALID;
        xpt_done(ccb);
        return(0);
    }





    ccb_h->status |= CAM_SIM_QUEUED;

    req = tws_get_request(sc, TWS_REQ_TYPE_SCSI_IO);
    if ( !req ) {
        TWS_TRACE_DEBUG(sc, "no reqs", ccb_h->target_id, ccb_h->target_lun);
        ccb_h->status |= CAM_REQUEUE_REQ;
        xpt_done(ccb);
        return(0);
    }

    if((ccb_h->flags & CAM_DIR_MASK) != CAM_DIR_NONE) {
        if(ccb_h->flags & CAM_DIR_IN)
            req->flags |= TWS_DIR_IN;
        if(ccb_h->flags & CAM_DIR_OUT)
            req->flags |= TWS_DIR_OUT;
    } else {
        req->flags = TWS_DIR_NONE;
    }

    req->type = TWS_REQ_TYPE_SCSI_IO;
    req->cb = tws_scsi_complete;

    cmd_pkt = req->cmd_pkt;

    cmd_pkt->cmd.pkt_a.res__opcode = TWS_FW_CMD_EXECUTE_SCSI;
    cmd_pkt->cmd.pkt_a.unit = ccb_h->target_id;
    cmd_pkt->cmd.pkt_a.status = 0;
    cmd_pkt->cmd.pkt_a.sgl_offset = 16;


    lun = ccb_h->target_lun & 0XF;
    lun = lun << 12;
    cmd_pkt->cmd.pkt_a.lun_l4__req_id = lun | req->request_id;

    lun = ccb_h->target_lun & 0XF0;
    lun = lun << 8;
    cmd_pkt->cmd.pkt_a.lun_h4__sgl_entries = lun;






    if(ccb_h->flags & CAM_CDB_POINTER)
        bcopy(csio->cdb_io.cdb_ptr, cmd_pkt->cmd.pkt_a.cdb, csio->cdb_len);
    else
        bcopy(csio->cdb_io.cdb_bytes, cmd_pkt->cmd.pkt_a.cdb, csio->cdb_len);

    req->data = ccb;
    req->flags |= TWS_DATA_CCB;

    req->ccb_ptr = ccb;




    sc->stats.scsi_ios++;
    callout_reset_sbt(&req->timeout, SBT_1MS * ccb->ccb_h.timeout, 0,
      tws_timeout, req, 0);
    error = tws_map_request(sc, req);
    return(error);
}
