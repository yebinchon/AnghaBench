
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct tws_softc {int dummy; } ;
struct tws_request {int error_code; int request_id; int cb; TYPE_3__* cmd_pkt; } ;
struct tws_cmd_generic {int size; scalar_t__ count; scalar_t__ flags; scalar_t__ status; scalar_t__ host_id__unit; int request_id; int sgl_off__opcode; } ;
struct TYPE_4__ {struct tws_cmd_generic generic; } ;
struct TYPE_5__ {TYPE_1__ pkt_g; } ;
struct TYPE_6__ {TYPE_2__ cmd; } ;


 int BUILD_RES__OPCODE (int ,int ) ;
 int FAILURE ;
 int SUCCESS ;
 int TWS_REQ_TYPE_INTERNAL_CMD ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,struct tws_softc*,int ) ;
 int bzero (struct tws_cmd_generic*,int) ;
 int tws_cmd_complete ;
 struct tws_request* tws_get_request (struct tws_softc*,int ) ;
 int tws_submit_command (struct tws_softc*,struct tws_request*) ;

int
tws_send_generic_cmd(struct tws_softc *sc, u_int8_t opcode)
{
    struct tws_request *req;
    struct tws_cmd_generic *cmd;

    TWS_TRACE_DEBUG(sc, "entry", sc, opcode);
    req = tws_get_request(sc, TWS_REQ_TYPE_INTERNAL_CMD);

    if ( req == ((void*)0) ) {
        TWS_TRACE_DEBUG(sc, "no requests", 0, 0);
        return(FAILURE);
    }

    cmd = &(req->cmd_pkt->cmd.pkt_g.generic);
    bzero(cmd, sizeof(struct tws_cmd_generic));

    req->cb = tws_cmd_complete;

    cmd->sgl_off__opcode = BUILD_RES__OPCODE(0, opcode);
    cmd->size = 2;
    cmd->request_id = req->request_id;
    cmd->host_id__unit = 0;
    cmd->status = 0;
    cmd->flags = 0;
    cmd->count = 0;

    req->error_code = tws_submit_command(sc, req);

    return(SUCCESS);

}
