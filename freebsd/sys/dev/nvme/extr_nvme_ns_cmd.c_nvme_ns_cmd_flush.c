
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_request {int cmd; } ;
struct nvme_namespace {int ctrlr; int id; } ;
typedef int nvme_cb_fn_t ;


 int ENOMEM ;
 struct nvme_request* nvme_allocate_request_null (int ,void*) ;
 int nvme_ctrlr_submit_io_request (int ,struct nvme_request*) ;
 int nvme_ns_flush_cmd (int *,int ) ;

int
nvme_ns_cmd_flush(struct nvme_namespace *ns, nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;

 req = nvme_allocate_request_null(cb_fn, cb_arg);

 if (req == ((void*)0))
  return (ENOMEM);

 nvme_ns_flush_cmd(&req->cmd, ns->id);
 nvme_ctrlr_submit_io_request(ns->ctrlr, req);

 return (0);
}
