
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int64_t ;
typedef scalar_t__ u_int16_t ;
struct TYPE_9__ {int reqs_out; } ;
struct TYPE_8__ {scalar_t__ fw_on_ctlr_build; scalar_t__ fw_on_ctlr_branch; int fw_on_ctlr_srl; scalar_t__ working_build; scalar_t__ working_branch; int working_srl; } ;
struct tws_softc {TYPE_4__ stats; TYPE_3__ cinfo; scalar_t__ is64bit; struct tws_request* reqs; } ;
struct tws_request {size_t type; scalar_t__ request_id; int state; int error_code; TYPE_2__* cmd_pkt; int * prev; int next; int timeout; int * ccb_ptr; int * cb; int flags; scalar_t__ length; int * data; } ;
struct tws_command_apache {int dummy; } ;
struct tws_cmd_init_connect {int size; scalar_t__ request_id; scalar_t__ fw_build; scalar_t__ fw_branch; int fw_srl; scalar_t__ fw_arch_id; int features; scalar_t__ message_credits; int res1__opcode; } ;
struct TYPE_6__ {struct tws_cmd_init_connect init_connect; } ;
struct TYPE_10__ {TYPE_1__ pkt_g; } ;
struct TYPE_7__ {TYPE_5__ cmd; } ;


 int BUILD_RES__OPCODE (int ,int ) ;
 int FAILURE ;
 int SUCCESS ;
 int TWS_64BIT_SG_ADDRESSES ;
 int TWS_BIT_EXTEND ;
 int TWS_CURRENT_FW_SRL ;
 int TWS_DIR_UNKNOWN ;
 int TWS_FW_CMD_INIT_CONNECTION ;
 scalar_t__ TWS_INVALID_REQID ;
 int TWS_REQ_RET_INVALID ;
 int TWS_REQ_STATE_BUSY ;
 int TWS_REQ_STATE_FREE ;
 size_t TWS_REQ_TYPE_INTERNAL_CMD ;
 int TWS_TRACE (struct tws_softc*,char*,scalar_t__,int ) ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,scalar_t__) ;
 int bzero (TYPE_5__*,int) ;
 int callout_stop (int *) ;
 struct tws_request* tws_get_request (struct tws_softc*,size_t) ;
 scalar_t__ tws_poll4_response (struct tws_softc*,int *) ;
 int tws_submit_command (struct tws_softc*,struct tws_request*) ;
 int tws_swap16 (int) ;
 int tws_swap32 (int) ;
 int tws_swap64 (int) ;
 int tws_use_32bit_sgls ;

int
tws_init_connect(struct tws_softc *sc, u_int16_t mcreadits )
{
    struct tws_request *req;
    struct tws_cmd_init_connect *initc;
    u_int16_t reqid;
    u_int64_t mfa;

    TWS_TRACE_DEBUG(sc, "entry", 0, mcreadits);



    req = &sc->reqs[TWS_REQ_TYPE_INTERNAL_CMD];
    bzero(&req->cmd_pkt->cmd, sizeof(struct tws_command_apache));
    req->data = ((void*)0);
    req->length = 0;
    req->type = TWS_REQ_TYPE_INTERNAL_CMD;
    req->flags = TWS_DIR_UNKNOWN;
    req->error_code = TWS_REQ_RET_INVALID;
    req->cb = ((void*)0);
    req->ccb_ptr = ((void*)0);
    callout_stop(&req->timeout);
    req->next = req->prev = ((void*)0);
    req->state = TWS_REQ_STATE_BUSY;


    if ( req == ((void*)0) ) {
        TWS_TRACE_DEBUG(sc, "no requests", 0, 0);

        return(FAILURE);
    }

    tws_swap16(0xbeef);
    tws_swap32(0xdeadbeef);
    tws_swap64(0xdeadbeef);
    initc = &(req->cmd_pkt->cmd.pkt_g.init_connect);


    initc->res1__opcode =
              BUILD_RES__OPCODE(0, TWS_FW_CMD_INIT_CONNECTION);
    initc->size = 6;
    initc->request_id = req->request_id;
    initc->message_credits = mcreadits;
    initc->features |= TWS_BIT_EXTEND;
    if ( sc->is64bit && !tws_use_32bit_sgls )
        initc->features |= TWS_64BIT_SG_ADDRESSES;


    initc->size = 6;
    initc->fw_srl = sc->cinfo.working_srl = TWS_CURRENT_FW_SRL;
    initc->fw_arch_id = 0;
    initc->fw_branch = sc->cinfo.working_branch = 0;
    initc->fw_build = sc->cinfo.working_build = 0;

    req->error_code = tws_submit_command(sc, req);
    reqid = tws_poll4_response(sc, &mfa);
    if ( reqid != TWS_INVALID_REQID && reqid == req->request_id ) {
        sc->cinfo.fw_on_ctlr_srl = initc->fw_srl;
        sc->cinfo.fw_on_ctlr_branch = initc->fw_branch;
        sc->cinfo.fw_on_ctlr_build = initc->fw_build;
        sc->stats.reqs_out++;
        req->state = TWS_REQ_STATE_FREE;
    }
    else {




        TWS_TRACE(sc, "unexpected req_id ", reqid, 0);
        TWS_TRACE(sc, "INITCONNECT FAILED", reqid, 0);
        return(FAILURE);
    }
    return(SUCCESS);
}
