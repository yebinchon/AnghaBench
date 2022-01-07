
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
struct nvme_command {int dummy; } ;
struct nvme_request {int * qpair; struct nvme_command cmd; } ;
struct nvme_namespace {int ctrlr; int id; } ;
struct nvme_completion_poll_status {scalar_t__ done; } ;
typedef size_t off_t ;


 int DELAY (int) ;
 int ENOMEM ;
 int ENXIO ;
 int ETIMEDOUT ;
 scalar_t__ FALSE ;
 int NVD_DUMP_TIMEOUT ;
 struct nvme_request* nvme_allocate_request_vaddr (void*,size_t,int ,struct nvme_completion_poll_status*) ;
 int nvme_completion_poll_cb ;
 int nvme_ctrlr_submit_io_request (int ,struct nvme_request*) ;
 int nvme_ns_flush_cmd (struct nvme_command*,int ) ;
 size_t nvme_ns_get_sector_size (struct nvme_namespace*) ;
 int nvme_ns_write_cmd (struct nvme_command*,int ,size_t,size_t) ;
 int nvme_qpair_process_completions (int *) ;

int
nvme_ns_dump(struct nvme_namespace *ns, void *virt, off_t offset, size_t len)
{
 struct nvme_completion_poll_status status;
 struct nvme_request *req;
 struct nvme_command *cmd;
 uint64_t lba, lba_count;
 int i;

 status.done = FALSE;
 req = nvme_allocate_request_vaddr(virt, len, nvme_completion_poll_cb,
     &status);
 if (req == ((void*)0))
  return (ENOMEM);

 cmd = &req->cmd;

 if (len > 0) {
  lba = offset / nvme_ns_get_sector_size(ns);
  lba_count = len / nvme_ns_get_sector_size(ns);
  nvme_ns_write_cmd(cmd, ns->id, lba, lba_count);
 } else
  nvme_ns_flush_cmd(cmd, ns->id);

 nvme_ctrlr_submit_io_request(ns->ctrlr, req);
 if (req->qpair == ((void*)0))
  return (ENXIO);

 i = 0;
 while ((i++ < NVD_DUMP_TIMEOUT) && (status.done == FALSE)) {
  DELAY(5);
  nvme_qpair_process_completions(req->qpair);
 }
 if (status.done == FALSE)
  return (ETIMEDOUT);

 return (0);
}
