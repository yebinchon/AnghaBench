
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_tracker {int cid; } ;
struct nvme_qpair {int id; } ;
struct nvme_completion {int status; int cid; int sqid; } ;
typedef int error_print_t ;
typedef int cpl ;


 int NVME_STATUS_DNR_MASK ;
 int NVME_STATUS_DNR_SHIFT ;
 int NVME_STATUS_SCT_MASK ;
 int NVME_STATUS_SCT_SHIFT ;
 int NVME_STATUS_SC_MASK ;
 int NVME_STATUS_SC_SHIFT ;
 int memset (struct nvme_completion*,int ,int) ;
 int nvme_qpair_complete_tracker (struct nvme_qpair*,struct nvme_tracker*,struct nvme_completion*,int ) ;

__attribute__((used)) static void
nvme_qpair_manual_complete_tracker(struct nvme_qpair *qpair,
    struct nvme_tracker *tr, uint32_t sct, uint32_t sc, uint32_t dnr,
    error_print_t print_on_error)
{
 struct nvme_completion cpl;

 memset(&cpl, 0, sizeof(cpl));
 cpl.sqid = qpair->id;
 cpl.cid = tr->cid;
 cpl.status |= (sct & NVME_STATUS_SCT_MASK) << NVME_STATUS_SCT_SHIFT;
 cpl.status |= (sc & NVME_STATUS_SC_MASK) << NVME_STATUS_SC_SHIFT;
 cpl.status |= (dnr & NVME_STATUS_DNR_MASK) << NVME_STATUS_DNR_SHIFT;
 nvme_qpair_complete_tracker(qpair, tr, &cpl, print_on_error);
}
