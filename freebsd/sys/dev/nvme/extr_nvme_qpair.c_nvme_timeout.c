
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nvme_tracker {int cid; struct nvme_qpair* qpair; } ;
struct nvme_qpair {int id; struct nvme_controller* ctrlr; } ;
struct nvme_controller {scalar_t__ enable_aborts; } ;


 int NVME_CSTS_REG_CFS_MASK ;
 int NVME_CSTS_REG_CFS_SHIFT ;
 int nvme_abort_complete ;
 int nvme_ctrlr_cmd_abort (struct nvme_controller*,int ,int ,int ,struct nvme_tracker*) ;
 int nvme_ctrlr_reset (struct nvme_controller*) ;
 int nvme_mmio_read_4 (struct nvme_controller*,int) ;
 int nvme_printf (struct nvme_controller*,char*,...) ;
 scalar_t__ nvme_qpair_process_completions (struct nvme_qpair*) ;

__attribute__((used)) static void
nvme_timeout(void *arg)
{
 struct nvme_tracker *tr = arg;
 struct nvme_qpair *qpair = tr->qpair;
 struct nvme_controller *ctrlr = qpair->ctrlr;
 uint32_t csts;
 uint8_t cfs;
 csts = nvme_mmio_read_4(ctrlr, csts);
 cfs = (csts >> NVME_CSTS_REG_CFS_SHIFT) & NVME_CSTS_REG_CFS_MASK;
 if (cfs == 0 && nvme_qpair_process_completions(qpair)) {
  nvme_printf(ctrlr, "Missing interrupt\n");
  return;
 }
 if (ctrlr->enable_aborts && cfs == 0) {
  nvme_printf(ctrlr, "Aborting command due to a timeout.\n");
  nvme_ctrlr_cmd_abort(ctrlr, tr->cid, qpair->id,
      nvme_abort_complete, tr);
 } else {
  nvme_printf(ctrlr, "Resetting controller due to a timeout%s.\n",
      (csts == 0xffffffff) ? " and possible hot unplug" :
      (cfs ? " and fatal error status" : ""));
  nvme_ctrlr_reset(ctrlr);
 }
}
