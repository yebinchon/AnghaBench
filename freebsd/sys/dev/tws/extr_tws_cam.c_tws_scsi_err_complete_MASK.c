#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int status; scalar_t__ target_lun; } ;
struct TYPE_8__ {int* cdb_bytes; } ;
struct TYPE_10__ {int /*<<< orphan*/  scsi_status; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_data; TYPE_1__ cdb_io; } ;
union ccb {TYPE_7__ ccb_h; TYPE_3__ csio; } ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct tws_softc {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  sim_lock; } ;
struct tws_request {struct tws_softc* sc; int /*<<< orphan*/  timeout; TYPE_6__* cmd_pkt; union ccb* ccb_ptr; } ;
struct TYPE_9__ {int /*<<< orphan*/  error; } ;
struct tws_command_header {int /*<<< orphan*/  sense_data; TYPE_2__ status_block; } ;
struct TYPE_11__ {int /*<<< orphan*/  status; } ;
struct TYPE_12__ {TYPE_4__ pkt_a; } ;
struct TYPE_13__ {TYPE_5__ cmd; } ;

/* Variables and functions */
 int CAM_AUTOSNS_VALID ; 
 int CAM_DEV_NOT_THERE ; 
 int CAM_REQ_CMP_ERR ; 
 int CAM_SCSI_STATUS_ERROR ; 
 int CAM_SEL_TIMEOUT ; 
 int CAM_SIM_QUEUED ; 
 int /*<<< orphan*/  TWS_BUSY_Q ; 
 int /*<<< orphan*/  TWS_ERROR_LOGICAL_UNIT_NOT_SUPPORTED ; 
 int /*<<< orphan*/  TWS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  TWS_ERROR_UNIT_OFFLINE ; 
 int /*<<< orphan*/  TWS_FREE_Q ; 
 int /*<<< orphan*/  TWS_SENSE_DATA_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tws_softc*,struct tws_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tws_softc*,struct tws_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tws_softc*,struct tws_request*) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static void
FUNC9(struct tws_request *req, struct tws_command_header *hdr)
{ 
    u_int8_t *sense_data;
    struct tws_softc *sc = req->sc;
    union ccb *ccb = req->ccb_ptr;

    FUNC0(sc, "sbe, cmd_status", hdr->status_block.error, 
                                 req->cmd_pkt->cmd.pkt_a.status);
    if ( hdr->status_block.error == TWS_ERROR_LOGICAL_UNIT_NOT_SUPPORTED ||
         hdr->status_block.error == TWS_ERROR_UNIT_OFFLINE ) {

        if ( ccb->ccb_h.target_lun ) {
            FUNC0(sc, "invalid lun error",0,0);
            ccb->ccb_h.status |= CAM_DEV_NOT_THERE;
        } else {
            FUNC0(sc, "invalid target error",0,0);
            ccb->ccb_h.status |= CAM_SEL_TIMEOUT;
        }

    } else {
        FUNC0(sc, "scsi status  error",0,0);
        ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
        if (((ccb->csio.cdb_io.cdb_bytes[0] == 0x1A) && 
              (hdr->status_block.error == TWS_ERROR_NOT_SUPPORTED))) {
            ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR | CAM_AUTOSNS_VALID;
            FUNC0(sc, "page mode not supported",0,0);
        }
    }

    /* if there were no error simply mark complete error */ 
    if (ccb->ccb_h.status == 0)
        ccb->ccb_h.status = CAM_REQ_CMP_ERR;

    sense_data = (u_int8_t *)&ccb->csio.sense_data;
    if (sense_data) {
        FUNC2(sense_data, hdr->sense_data, TWS_SENSE_DATA_LENGTH );
        ccb->csio.sense_len = TWS_SENSE_DATA_LENGTH;
        ccb->ccb_h.status |= CAM_AUTOSNS_VALID;
    }
    ccb->csio.scsi_status = req->cmd_pkt->cmd.pkt_a.status;
 
    ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
    FUNC3(&sc->sim_lock);
    FUNC8(ccb);
    FUNC4(&sc->sim_lock);

    FUNC1(&req->timeout);
    FUNC7(req->sc, req);
    FUNC3(&sc->q_lock);
    FUNC6(sc, req, TWS_BUSY_Q);
    FUNC5(sc, req, TWS_FREE_Q);
    FUNC4(&sc->q_lock);
}