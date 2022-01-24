#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
typedef  scalar_t__ u_int32_t ;
typedef  int u_int16_t ;
struct tws_softc {int /*<<< orphan*/  gen_lock; int /*<<< orphan*/  ioctl_data_map; int /*<<< orphan*/  ioctl_data_mem; } ;
struct tws_request {int length; int request_id; int flags; scalar_t__ state; int error_code; int /*<<< orphan*/  data; TYPE_5__* cmd_pkt; int /*<<< orphan*/  cb; int /*<<< orphan*/  dma_map; } ;
struct TYPE_14__ {int os_status; int /*<<< orphan*/  buffer_length; } ;
struct TYPE_10__ {scalar_t__ request_id; } ;
struct TYPE_11__ {TYPE_2__ generic; } ;
struct TYPE_9__ {int lun_l4__req_id; int /*<<< orphan*/  res__opcode; } ;
struct TYPE_15__ {TYPE_3__ pkt_g; TYPE_1__ pkt_a; } ;
struct TYPE_12__ {TYPE_7__ cmd; TYPE_7__ hdr; } ;
struct tws_ioctl_no_data_buf {TYPE_6__ driver_pkt; int /*<<< orphan*/  pdata; TYPE_4__ cmd_pkt; } ;
struct tws_command_apache {int dummy; } ;
struct TYPE_13__ {TYPE_7__ cmd; TYPE_7__ hdr; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int EWOULDBLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TWS_DIR_IN ; 
 int TWS_DIR_OUT ; 
 scalar_t__ TWS_FW_CMD_EXECUTE_SCSI ; 
 int TWS_IOCTL_TIMEOUT ; 
 scalar_t__ TWS_MAX_IO_SIZE ; 
 scalar_t__ TWS_ONLINE ; 
 int TWS_REQ_RET_RESET ; 
 int TWS_REQ_RET_SUBMIT_SUCCESS ; 
 scalar_t__ TWS_REQ_STATE_COMPLETE ; 
 scalar_t__ TWS_REQ_STATE_FREE ; 
 int /*<<< orphan*/  TWS_REQ_TYPE_PASSTHRU ; 
 int /*<<< orphan*/  FUNC1 (struct tws_softc*,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct tws_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct tws_softc*,int /*<<< orphan*/ ,char*,int) ; 
 struct tws_request* FUNC10 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct tws_softc*) ; 
 int FUNC12 (struct tws_softc*,struct tws_request*) ; 
 int /*<<< orphan*/  tws_passthru_complete ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (struct tws_softc*,struct tws_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct tws_softc*) ; 

__attribute__((used)) static int 
FUNC16(struct tws_softc *sc, void *buf)
{
    struct tws_request *req;
    struct tws_ioctl_no_data_buf *ubuf = (struct tws_ioctl_no_data_buf *)buf;
    int error;
    u_int32_t buffer_length;
    u_int16_t lun4;

    buffer_length = FUNC8(ubuf->driver_pkt.buffer_length, 512);
    if ( buffer_length > TWS_MAX_IO_SIZE ) {
        return(EINVAL);
    }
    if ( FUNC11(sc) != TWS_ONLINE) {
        return(EBUSY);
    }

    //==============================================================================================
    // Get a command
    //
    do {
        req = FUNC10(sc, TWS_REQ_TYPE_PASSTHRU);
        if ( !req ) {
            error = FUNC9(sc,  0, "tws_sleep", TWS_IOCTL_TIMEOUT*hz);
            if ( error == EWOULDBLOCK ) {
                return(ETIMEDOUT);
            }
        } else {
            // Make sure we are still ready for new commands...
            if ( FUNC11(sc) != TWS_ONLINE) {
                return(EBUSY);
            }
            break;
        }
    } while(1);

    req->length = buffer_length;
    FUNC1(sc, "datal,rid", req->length, req->request_id);
    if ( req->length ) {
        req->data = sc->ioctl_data_mem;
        req->dma_map = sc->ioctl_data_map;

        //==========================================================================================
        // Copy data in from user space
        //
        error = FUNC2(ubuf->pdata, req->data, req->length);
    }

    //==============================================================================================
    // Set command fields
    //
    req->flags = TWS_DIR_IN | TWS_DIR_OUT;
    req->cb = tws_passthru_complete;

    FUNC4(&req->cmd_pkt->cmd, &ubuf->cmd_pkt.cmd, 
                              sizeof(struct tws_command_apache));

    if ( FUNC0(req->cmd_pkt->cmd.pkt_a.res__opcode) == 
                                               TWS_FW_CMD_EXECUTE_SCSI ) { 
        lun4 = req->cmd_pkt->cmd.pkt_a.lun_l4__req_id & 0xF000;
        req->cmd_pkt->cmd.pkt_a.lun_l4__req_id = lun4 | req->request_id;
    } else {
        req->cmd_pkt->cmd.pkt_g.generic.request_id = (u_int8_t) req->request_id;
    }

    //==============================================================================================
    // Send command to controller
    //
    error = FUNC12(sc, req);
    if (error) {
        ubuf->driver_pkt.os_status = error;
        goto out_data;
    }

    if ( req->state == TWS_REQ_STATE_COMPLETE ) {
        ubuf->driver_pkt.os_status = req->error_code;
        goto out_unmap;
    }

    FUNC5(&sc->gen_lock);
    error = FUNC6(req, &sc->gen_lock, 0, "tws_passthru", TWS_IOCTL_TIMEOUT*hz);
    FUNC7(&sc->gen_lock);
    if (( req->state != TWS_REQ_STATE_COMPLETE ) && ( error == EWOULDBLOCK )) {
            FUNC1(sc, "msleep timeout", error, req->request_id);
            FUNC13((void*) req);
    }

out_unmap:
    if ( req->error_code == TWS_REQ_RET_RESET ) {
        error = EBUSY;
        req->error_code = EBUSY;
        FUNC1(sc, "ioctl reset", error, req->request_id);
    }

    FUNC14(sc, req);

    //==============================================================================================
    // Return command status to user space
    //
    FUNC4(&ubuf->cmd_pkt.hdr, &req->cmd_pkt->hdr, sizeof(struct tws_command_apache));
    FUNC4(&ubuf->cmd_pkt.cmd, &req->cmd_pkt->cmd, sizeof(struct tws_command_apache));

out_data:
    if ( req->length ) {
        //==========================================================================================
        // Copy data out to user space
        //
        if ( !error )
            error = FUNC3(req->data, ubuf->pdata, ubuf->driver_pkt.buffer_length);
    }

    if ( error ) 
        FUNC1(sc, "errored", error, 0);

    if ( req->error_code != TWS_REQ_RET_SUBMIT_SUCCESS )
        ubuf->driver_pkt.os_status = error;

    //==============================================================================================
    // Free command
    //
    req->state = TWS_REQ_STATE_FREE;

    FUNC15(sc);

    return(error);
}