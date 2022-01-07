
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nvme_request {int cmd; } ;
struct nvme_namespace {int ctrlr; int id; } ;
struct bio {int bio_offset; int bio_bcount; } ;
typedef int nvme_cb_fn_t ;


 int ENOMEM ;
 struct nvme_request* nvme_allocate_request_bio (struct bio*,int ,void*) ;
 int nvme_ctrlr_submit_io_request (int ,struct nvme_request*) ;
 int nvme_ns_get_sector_size (struct nvme_namespace*) ;
 int nvme_ns_write_cmd (int *,int ,int,int) ;

int
nvme_ns_cmd_write_bio(struct nvme_namespace *ns, struct bio *bp,
    nvme_cb_fn_t cb_fn, void *cb_arg)
{
 struct nvme_request *req;
 uint64_t lba;
 uint64_t lba_count;

 req = nvme_allocate_request_bio(bp, cb_fn, cb_arg);

 if (req == ((void*)0))
  return (ENOMEM);
 lba = bp->bio_offset / nvme_ns_get_sector_size(ns);
 lba_count = bp->bio_bcount / nvme_ns_get_sector_size(ns);
 nvme_ns_write_cmd(&req->cmd, ns->id, lba, lba_count);

 nvme_ctrlr_submit_io_request(ns->ctrlr, req);

 return (0);
}
