
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int param_count; int size; scalar_t__ host_id__unit; void* request_id; int sgl_off__opcode; } ;
union tws_command_giga {TYPE_2__ param; } ;
typedef void* u_int8_t ;
typedef int u_int32_t ;
typedef scalar_t__ u_int16_t ;
struct tws_softc {int dummy; } ;
struct tws_request {int timeout; scalar_t__ request_id; struct tws_command_packet* cmd_pkt; int flags; int cb; int * data; int length; } ;
struct tws_getset_param {int table_id; int data; scalar_t__ parameter_size_bytes; void* parameter_id; } ;
struct TYPE_3__ {union tws_command_giga pkt_g; } ;
struct tws_command_packet {TYPE_1__ cmd; } ;


 int BUILD_SGL_OFF__OPCODE (int,int ) ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_TWS ;
 int TWS_9K_PARAM_DESCRIPTOR ;
 int TWS_DIR_OUT ;
 int TWS_FW_CMD_SET_PARAM ;
 int TWS_IOCTL_TIMEOUT ;
 int TWS_REQ_TYPE_GETSET_PARAM ;
 int TWS_SECTOR_SIZE ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 int bzero (int *,int ) ;
 int callout_reset (int *,int,int ,struct tws_request*) ;
 int hz ;
 int * malloc (int ,int ,int ) ;
 int memcpy (int ,void*,int) ;
 struct tws_request* tws_get_request (struct tws_softc*,int ) ;
 int tws_getset_param_complete ;
 int tws_map_request (struct tws_softc*,struct tws_request*) ;
 int tws_timeout ;

int
tws_set_param(struct tws_softc *sc, u_int32_t table_id, u_int32_t param_id,
              u_int32_t param_size, void *data)
{
    struct tws_request *req;
    struct tws_command_packet *cmd_pkt;
    union tws_command_giga *cmd;
    struct tws_getset_param *param;
    int error;

    req = tws_get_request(sc, TWS_REQ_TYPE_GETSET_PARAM);
    if ( req == ((void*)0) ) {
        TWS_TRACE_DEBUG(sc, "null req", 0, 0);
        return(ENOMEM);
    }

    req->length = TWS_SECTOR_SIZE;
    req->data = malloc(TWS_SECTOR_SIZE, M_TWS, M_NOWAIT);
    if ( req->data == ((void*)0) )
        return(ENOMEM);
    bzero(req->data, TWS_SECTOR_SIZE);
    param = (struct tws_getset_param *)req->data;

    req->cb = tws_getset_param_complete;
    req->flags = TWS_DIR_OUT;
    cmd_pkt = req->cmd_pkt;

    cmd = &cmd_pkt->cmd.pkt_g;
    cmd->param.sgl_off__opcode =
            BUILD_SGL_OFF__OPCODE(2, TWS_FW_CMD_SET_PARAM);
    cmd->param.request_id = (u_int8_t)req->request_id;
    cmd->param.host_id__unit = 0;
    cmd->param.param_count = 1;
    cmd->param.size = 2;


    param->table_id = (table_id | TWS_9K_PARAM_DESCRIPTOR);
    param->parameter_id = (u_int8_t)(param_id);
    param->parameter_size_bytes = (u_int16_t)param_size;
    memcpy(param->data, data, param_size);

    callout_reset(&req->timeout, (TWS_IOCTL_TIMEOUT * hz), tws_timeout, req);
    error = tws_map_request(sc, req);
    return(error);

}
