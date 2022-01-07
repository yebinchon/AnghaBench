
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opc; } ;
struct nvme_request {TYPE_1__ cmd; int timeout; } ;
struct nvme_controller {int dummy; } ;
struct nvme_async_event_request {struct nvme_request* req; struct nvme_controller* ctrlr; } ;


 int FALSE ;
 int NVME_OPC_ASYNC_EVENT_REQUEST ;
 struct nvme_request* nvme_allocate_request_null (int ,struct nvme_async_event_request*) ;
 int nvme_ctrlr_async_event_cb ;
 int nvme_ctrlr_submit_admin_request (struct nvme_controller*,struct nvme_request*) ;

__attribute__((used)) static void
nvme_ctrlr_construct_and_submit_aer(struct nvme_controller *ctrlr,
    struct nvme_async_event_request *aer)
{
 struct nvme_request *req;

 aer->ctrlr = ctrlr;
 req = nvme_allocate_request_null(nvme_ctrlr_async_event_cb, aer);
 aer->req = req;





 req->timeout = FALSE;
 req->cmd.opc = NVME_OPC_ASYNC_EVENT_REQUEST;
 nvme_ctrlr_submit_admin_request(ctrlr, req);
}
