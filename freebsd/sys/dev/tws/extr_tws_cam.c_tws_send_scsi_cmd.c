
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct tws_softc {int dummy; } ;
struct tws_request {int timeout; int flags; int * data; int length; int request_id; struct tws_command_packet* cmd_pkt; int cb; } ;
struct TYPE_3__ {int sgl_offset; int* cdb; int lun_l4__req_id; scalar_t__ unit; scalar_t__ status; int res__opcode; } ;
struct TYPE_4__ {TYPE_1__ pkt_a; } ;
struct tws_command_packet {TYPE_2__ cmd; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_TWS ;
 int TWS_DIR_IN ;
 int TWS_FW_CMD_EXECUTE_SCSI ;
 int TWS_IO_TIMEOUT ;
 int TWS_REQ_TYPE_AEN_FETCH ;
 int TWS_SECTOR_SIZE ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,struct tws_softc*,int) ;
 int bzero (int *,int ) ;
 int callout_reset (int *,int,int ,struct tws_request*) ;
 int hz ;
 int * malloc (int ,int ,int ) ;
 int tws_aen_complete ;
 struct tws_request* tws_get_request (struct tws_softc*,int ) ;
 int tws_map_request (struct tws_softc*,struct tws_request*) ;
 int tws_timeout ;

int
tws_send_scsi_cmd(struct tws_softc *sc, int cmd)
{
    struct tws_request *req;
    struct tws_command_packet *cmd_pkt;
    int error;

    TWS_TRACE_DEBUG(sc, "entry",sc, cmd);
    req = tws_get_request(sc, TWS_REQ_TYPE_AEN_FETCH);

    if ( req == ((void*)0) )
        return(ENOMEM);

    req->cb = tws_aen_complete;

    cmd_pkt = req->cmd_pkt;
    cmd_pkt->cmd.pkt_a.res__opcode = TWS_FW_CMD_EXECUTE_SCSI;
    cmd_pkt->cmd.pkt_a.status = 0;
    cmd_pkt->cmd.pkt_a.unit = 0;
    cmd_pkt->cmd.pkt_a.sgl_offset = 16;
    cmd_pkt->cmd.pkt_a.lun_l4__req_id = req->request_id;

    cmd_pkt->cmd.pkt_a.cdb[0] = (u_int8_t)cmd;
    cmd_pkt->cmd.pkt_a.cdb[4] = 128;

    req->length = TWS_SECTOR_SIZE;
    req->data = malloc(TWS_SECTOR_SIZE, M_TWS, M_NOWAIT);
    if ( req->data == ((void*)0) )
        return(ENOMEM);
    bzero(req->data, TWS_SECTOR_SIZE);
    req->flags = TWS_DIR_IN;

    callout_reset(&req->timeout, (TWS_IO_TIMEOUT * hz), tws_timeout, req);
    error = tws_map_request(sc, req);
    return(error);

}
