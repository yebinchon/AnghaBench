
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_command {int nsid; int opc; } ;
struct nvme_request {struct nvme_command cmd; } ;
struct nvme_namespace_data {int dummy; } ;
struct nvme_controller {int dummy; } ;
typedef int nvme_cb_fn_t ;


 int NVME_OPC_IDENTIFY ;
 int htole32 (int ) ;
 struct nvme_request* nvme_allocate_request_vaddr (void*,int,int ,void*) ;
 int nvme_ctrlr_submit_admin_request (struct nvme_controller*,struct nvme_request*) ;

void
nvme_ctrlr_cmd_identify_namespace(struct nvme_controller *ctrlr, uint32_t nsid,
 void *payload, nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;
 struct nvme_command *cmd;

 req = nvme_allocate_request_vaddr(payload,
     sizeof(struct nvme_namespace_data), cb_fn, cb_arg);

 cmd = &req->cmd;
 cmd->opc = NVME_OPC_IDENTIFY;




 cmd->nsid = htole32(nsid);

 nvme_ctrlr_submit_admin_request(ctrlr, req);
}
