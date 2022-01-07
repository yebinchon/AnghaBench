
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tws_request {TYPE_2__* cmd_pkt; int error_code; int request_id; int sc; } ;
struct TYPE_3__ {int error; } ;
struct tws_command_header {TYPE_1__ status_block; } ;
struct TYPE_4__ {int hdr; } ;


 int TWS_TRACE_DEBUG (int ,char*,struct tws_command_header*,int ) ;
 int memcpy (int *,struct tws_command_header*,int) ;
 int tws_passthru_complete (struct tws_request*) ;

__attribute__((used)) static void
tws_passthru_err_complete(struct tws_request *req,
                                          struct tws_command_header *hdr)
{
    TWS_TRACE_DEBUG(req->sc, "entry", hdr, req->request_id);
    req->error_code = hdr->status_block.error;
    memcpy(&(req->cmd_pkt->hdr), hdr, sizeof(struct tws_command_header));
    tws_passthru_complete(req);
}
