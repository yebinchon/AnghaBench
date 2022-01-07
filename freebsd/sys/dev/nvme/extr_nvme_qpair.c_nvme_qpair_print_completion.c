
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nvme_qpair {int ctrlr; } ;
struct nvme_completion {int cdw0; int cid; int sqid; int status; } ;


 int NVME_STATUS_GET_SC (int ) ;
 int NVME_STATUS_GET_SCT (int ) ;
 int get_status_string (int ,int ) ;
 int nvme_printf (int ,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
nvme_qpair_print_completion(struct nvme_qpair *qpair,
    struct nvme_completion *cpl)
{
 uint16_t sct, sc;

 sct = NVME_STATUS_GET_SCT(cpl->status);
 sc = NVME_STATUS_GET_SC(cpl->status);

 nvme_printf(qpair->ctrlr, "%s (%02x/%02x) sqid:%d cid:%d cdw0:%x\n",
     get_status_string(sct, sc), sct, sc, cpl->sqid, cpl->cid,
     cpl->cdw0);
}
