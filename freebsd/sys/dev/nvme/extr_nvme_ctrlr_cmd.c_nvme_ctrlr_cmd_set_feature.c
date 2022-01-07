
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nvme_command {void* cdw11; void* cdw10; int opc; } ;
struct nvme_request {struct nvme_command cmd; } ;
struct nvme_controller {int dummy; } ;
typedef int nvme_cb_fn_t ;


 int NVME_OPC_SET_FEATURES ;
 void* htole32 (int ) ;
 struct nvme_request* nvme_allocate_request_null (int ,void*) ;
 int nvme_ctrlr_submit_admin_request (struct nvme_controller*,struct nvme_request*) ;

void
nvme_ctrlr_cmd_set_feature(struct nvme_controller *ctrlr, uint8_t feature,
    uint32_t cdw11, void *payload, uint32_t payload_size,
    nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;
 struct nvme_command *cmd;

 req = nvme_allocate_request_null(cb_fn, cb_arg);

 cmd = &req->cmd;
 cmd->opc = NVME_OPC_SET_FEATURES;
 cmd->cdw10 = htole32(feature);
 cmd->cdw11 = htole32(cdw11);

 nvme_ctrlr_submit_admin_request(ctrlr, req);
}
