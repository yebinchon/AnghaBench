
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_command {int prp1; void* cdw11; void* cdw10; int opc; } ;
struct nvme_request {struct nvme_command cmd; } ;
struct nvme_qpair {int num_entries; int id; int vector; int cpl_bus_addr; } ;
struct nvme_controller {int dummy; } ;
typedef int nvme_cb_fn_t ;


 int NVME_OPC_CREATE_IO_CQ ;
 void* htole32 (int) ;
 int htole64 (int ) ;
 struct nvme_request* nvme_allocate_request_null (int ,void*) ;
 int nvme_ctrlr_submit_admin_request (struct nvme_controller*,struct nvme_request*) ;

void
nvme_ctrlr_cmd_create_io_cq(struct nvme_controller *ctrlr,
    struct nvme_qpair *io_que, nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;
 struct nvme_command *cmd;

 req = nvme_allocate_request_null(cb_fn, cb_arg);

 cmd = &req->cmd;
 cmd->opc = NVME_OPC_CREATE_IO_CQ;





 cmd->cdw10 = htole32(((io_que->num_entries-1) << 16) | io_que->id);

 cmd->cdw11 = htole32((io_que->vector << 16) | 0x3);
 cmd->prp1 = htole64(io_que->cpl_bus_addr);

 nvme_ctrlr_submit_admin_request(ctrlr, req);
}
