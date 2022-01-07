
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nvme_request {int cmd; } ;
struct nvme_namespace {int ctrlr; int id; } ;
typedef int nvme_cb_fn_t ;


 int ENOMEM ;
 struct nvme_request* nvme_allocate_request_vaddr (void*,int,int ,void*) ;
 int nvme_ctrlr_submit_io_request (int ,struct nvme_request*) ;
 int nvme_ns_get_sector_size (struct nvme_namespace*) ;
 int nvme_ns_write_cmd (int *,int ,int ,int) ;

int
nvme_ns_cmd_write(struct nvme_namespace *ns, void *payload, uint64_t lba,
    uint32_t lba_count, nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;

 req = nvme_allocate_request_vaddr(payload,
     lba_count*nvme_ns_get_sector_size(ns), cb_fn, cb_arg);

 if (req == ((void*)0))
  return (ENOMEM);

 nvme_ns_write_cmd(&req->cmd, ns->id, lba, lba_count);

 nvme_ctrlr_submit_io_request(ns->ctrlr, req);

 return (0);
}
