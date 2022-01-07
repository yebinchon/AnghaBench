
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
typedef size_t u_int16_t ;
struct tws_softc {int obfl_q_overrun; int io_lock; int tws_dev; struct tws_request* reqs; } ;
struct tws_sense {struct tws_command_header* hdr; } ;
struct tws_request {size_t error_code; int type; } ;
struct TYPE_2__ {size_t request_id; int size_header; } ;
struct tws_command_header {TYPE_1__ header_desc; } ;


 int TWS_BIT13 ;
 int TWS_I2O0_HOBQPH ;
 int TWS_I2O0_HOBQPL ;
 int TWS_I2O0_STATUS ;
 size_t TWS_REQ_RET_SUBMIT_SUCCESS ;



 int TWS_TRACE_DEBUG (struct tws_softc*,char*,...) ;
 int device_printf (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct tws_sense* tws_find_sense_from_mfa (struct tws_softc*,int) ;
 int tws_getset_param_complete (struct tws_request*) ;
 int tws_passthru_err_complete (struct tws_request*,struct tws_command_header*) ;
 int tws_read_reg (struct tws_softc*,int ,int) ;
 int tws_scsi_err_complete (struct tws_request*,struct tws_command_header*) ;
 int tws_write_reg (struct tws_softc*,int ,int,int) ;

__attribute__((used)) static void
tws_err_complete(struct tws_softc *sc, u_int64_t mfa)
{
    struct tws_command_header *hdr;
    struct tws_sense *sen;
    struct tws_request *req;
    u_int16_t req_id;
    u_int32_t reg, status;

    if ( !mfa ) {
        TWS_TRACE_DEBUG(sc, "null mfa", 0, mfa);
        return;
    } else {

        sen = tws_find_sense_from_mfa(sc, mfa);
        if ( sen == ((void*)0) ) {
            TWS_TRACE_DEBUG(sc, "found null req", 0, mfa);
            return;
        }
        hdr = sen->hdr;
        TWS_TRACE_DEBUG(sc, "sen, hdr", sen, hdr);
        req_id = hdr->header_desc.request_id;
        req = &sc->reqs[req_id];
        TWS_TRACE_DEBUG(sc, "req, id", req, req_id);
        if ( req->error_code != TWS_REQ_RET_SUBMIT_SUCCESS )
            TWS_TRACE_DEBUG(sc, "submit failure?", 0, req->error_code);
    }

    switch (req->type) {
        case 129 :
            tws_passthru_err_complete(req, hdr);
            break;
        case 130 :
            tws_getset_param_complete(req);
            break;
        case 128 :
            tws_scsi_err_complete(req, hdr);
            break;

    }

    mtx_lock(&sc->io_lock);
    hdr->header_desc.size_header = 128;
    reg = (u_int32_t)( mfa>>32);
    tws_write_reg(sc, TWS_I2O0_HOBQPH, reg, 4);
    reg = (u_int32_t)(mfa);
    tws_write_reg(sc, TWS_I2O0_HOBQPL, reg, 4);

    status = tws_read_reg(sc, TWS_I2O0_STATUS, 4);
    if ( status & TWS_BIT13 ) {
        device_printf(sc->tws_dev, "OBFL Overrun\n");
        sc->obfl_q_overrun = 1;
    }
    mtx_unlock(&sc->io_lock);
}
