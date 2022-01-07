
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int32_t ;
typedef int u_int16_t ;
struct tws_softc {int gen_lock; int ioctl_data_map; int ioctl_data_mem; } ;
struct tws_request {int length; int request_id; int flags; scalar_t__ state; int error_code; int data; TYPE_5__* cmd_pkt; int cb; int dma_map; } ;
struct TYPE_14__ {int os_status; int buffer_length; } ;
struct TYPE_10__ {scalar_t__ request_id; } ;
struct TYPE_11__ {TYPE_2__ generic; } ;
struct TYPE_9__ {int lun_l4__req_id; int res__opcode; } ;
struct TYPE_15__ {TYPE_3__ pkt_g; TYPE_1__ pkt_a; } ;
struct TYPE_12__ {TYPE_7__ cmd; TYPE_7__ hdr; } ;
struct tws_ioctl_no_data_buf {TYPE_6__ driver_pkt; int pdata; TYPE_4__ cmd_pkt; } ;
struct tws_command_apache {int dummy; } ;
struct TYPE_13__ {TYPE_7__ cmd; TYPE_7__ hdr; } ;


 int EBUSY ;
 int EINVAL ;
 int ETIMEDOUT ;
 int EWOULDBLOCK ;
 scalar_t__ GET_OPCODE (int ) ;
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
 int TWS_REQ_TYPE_PASSTHRU ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int,int) ;
 int copyin (int ,int ,int) ;
 int copyout (int ,int ,int ) ;
 int hz ;
 int memcpy (TYPE_7__*,TYPE_7__*,int) ;
 int mtx_lock (int *) ;
 int mtx_sleep (struct tws_request*,int *,int ,char*,int) ;
 int mtx_unlock (int *) ;
 scalar_t__ roundup2 (int ,int) ;
 int tsleep (struct tws_softc*,int ,char*,int) ;
 struct tws_request* tws_get_request (struct tws_softc*,int ) ;
 scalar_t__ tws_get_state (struct tws_softc*) ;
 int tws_map_request (struct tws_softc*,struct tws_request*) ;
 int tws_passthru_complete ;
 int tws_timeout (void*) ;
 int tws_unmap_request (struct tws_softc*,struct tws_request*) ;
 int wakeup_one (struct tws_softc*) ;

__attribute__((used)) static int
tws_passthru(struct tws_softc *sc, void *buf)
{
    struct tws_request *req;
    struct tws_ioctl_no_data_buf *ubuf = (struct tws_ioctl_no_data_buf *)buf;
    int error;
    u_int32_t buffer_length;
    u_int16_t lun4;

    buffer_length = roundup2(ubuf->driver_pkt.buffer_length, 512);
    if ( buffer_length > TWS_MAX_IO_SIZE ) {
        return(EINVAL);
    }
    if ( tws_get_state(sc) != TWS_ONLINE) {
        return(EBUSY);
    }




    do {
        req = tws_get_request(sc, TWS_REQ_TYPE_PASSTHRU);
        if ( !req ) {
            error = tsleep(sc, 0, "tws_sleep", TWS_IOCTL_TIMEOUT*hz);
            if ( error == EWOULDBLOCK ) {
                return(ETIMEDOUT);
            }
        } else {

            if ( tws_get_state(sc) != TWS_ONLINE) {
                return(EBUSY);
            }
            break;
        }
    } while(1);

    req->length = buffer_length;
    TWS_TRACE_DEBUG(sc, "datal,rid", req->length, req->request_id);
    if ( req->length ) {
        req->data = sc->ioctl_data_mem;
        req->dma_map = sc->ioctl_data_map;




        error = copyin(ubuf->pdata, req->data, req->length);
    }




    req->flags = TWS_DIR_IN | TWS_DIR_OUT;
    req->cb = tws_passthru_complete;

    memcpy(&req->cmd_pkt->cmd, &ubuf->cmd_pkt.cmd,
                              sizeof(struct tws_command_apache));

    if ( GET_OPCODE(req->cmd_pkt->cmd.pkt_a.res__opcode) ==
                                               TWS_FW_CMD_EXECUTE_SCSI ) {
        lun4 = req->cmd_pkt->cmd.pkt_a.lun_l4__req_id & 0xF000;
        req->cmd_pkt->cmd.pkt_a.lun_l4__req_id = lun4 | req->request_id;
    } else {
        req->cmd_pkt->cmd.pkt_g.generic.request_id = (u_int8_t) req->request_id;
    }




    error = tws_map_request(sc, req);
    if (error) {
        ubuf->driver_pkt.os_status = error;
        goto out_data;
    }

    if ( req->state == TWS_REQ_STATE_COMPLETE ) {
        ubuf->driver_pkt.os_status = req->error_code;
        goto out_unmap;
    }

    mtx_lock(&sc->gen_lock);
    error = mtx_sleep(req, &sc->gen_lock, 0, "tws_passthru", TWS_IOCTL_TIMEOUT*hz);
    mtx_unlock(&sc->gen_lock);
    if (( req->state != TWS_REQ_STATE_COMPLETE ) && ( error == EWOULDBLOCK )) {
            TWS_TRACE_DEBUG(sc, "msleep timeout", error, req->request_id);
            tws_timeout((void*) req);
    }

out_unmap:
    if ( req->error_code == TWS_REQ_RET_RESET ) {
        error = EBUSY;
        req->error_code = EBUSY;
        TWS_TRACE_DEBUG(sc, "ioctl reset", error, req->request_id);
    }

    tws_unmap_request(sc, req);




    memcpy(&ubuf->cmd_pkt.hdr, &req->cmd_pkt->hdr, sizeof(struct tws_command_apache));
    memcpy(&ubuf->cmd_pkt.cmd, &req->cmd_pkt->cmd, sizeof(struct tws_command_apache));

out_data:
    if ( req->length ) {



        if ( !error )
            error = copyout(req->data, ubuf->pdata, ubuf->driver_pkt.buffer_length);
    }

    if ( error )
        TWS_TRACE_DEBUG(sc, "errored", error, 0);

    if ( req->error_code != TWS_REQ_RET_SUBMIT_SUCCESS )
        ubuf->driver_pkt.os_status = error;




    req->state = TWS_REQ_STATE_FREE;

    wakeup_one(sc);

    return(error);
}
