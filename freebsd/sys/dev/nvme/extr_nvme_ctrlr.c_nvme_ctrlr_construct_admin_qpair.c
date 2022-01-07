
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nvme_qpair {size_t domain; scalar_t__ cpu; scalar_t__ id; } ;
struct nvme_controller {size_t domain; struct nvme_qpair adminq; } ;


 scalar_t__ CPU_FFS (int *) ;
 scalar_t__ NVME_ADMIN_ENTRIES ;
 int NVME_ADMIN_TRACKERS ;
 scalar_t__ NVME_MAX_ADMIN_ENTRIES ;
 scalar_t__ NVME_MIN_ADMIN_ENTRIES ;
 int TUNABLE_INT_FETCH (char*,scalar_t__*) ;
 int * cpuset_domain ;
 int nvme_printf (struct nvme_controller*,char*,scalar_t__) ;
 int nvme_qpair_construct (struct nvme_qpair*,scalar_t__,int ,struct nvme_controller*) ;

__attribute__((used)) static int
nvme_ctrlr_construct_admin_qpair(struct nvme_controller *ctrlr)
{
 struct nvme_qpair *qpair;
 uint32_t num_entries;
 int error;

 qpair = &ctrlr->adminq;
 qpair->id = 0;
 qpair->cpu = CPU_FFS(&cpuset_domain[ctrlr->domain]) - 1;
 qpair->domain = ctrlr->domain;

 num_entries = NVME_ADMIN_ENTRIES;
 TUNABLE_INT_FETCH("hw.nvme.admin_entries", &num_entries);




 if (num_entries < NVME_MIN_ADMIN_ENTRIES ||
     num_entries > NVME_MAX_ADMIN_ENTRIES) {
  nvme_printf(ctrlr, "invalid hw.nvme.admin_entries=%d "
      "specified\n", num_entries);
  num_entries = NVME_ADMIN_ENTRIES;
 }





 error = nvme_qpair_construct(qpair, num_entries, NVME_ADMIN_TRACKERS,
      ctrlr);
 return (error);
}
