
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_command {int cdw10; int opc; } ;
struct nvme_request {struct nvme_command cmd; } ;
struct nvme_qpair {int id; } ;
struct nvme_controller {int dummy; } ;
typedef int nvme_cb_fn_t ;


 int NVME_OPC_DELETE_IO_SQ ;
 int htole32 (int ) ;
 struct nvme_request* nvme_allocate_request_null (int ,void*) ;
 int nvme_ctrlr_submit_admin_request (struct nvme_controller*,struct nvme_request*) ;

void
nvme_ctrlr_cmd_delete_io_sq(struct nvme_controller *ctrlr,
    struct nvme_qpair *io_que, nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;
 struct nvme_command *cmd;

 req = nvme_allocate_request_null(cb_fn, cb_arg);

 cmd = &req->cmd;
 cmd->opc = NVME_OPC_DELETE_IO_SQ;





 cmd->cdw10 = htole32(io_que->id);

 nvme_ctrlr_submit_admin_request(ctrlr, req);
}
