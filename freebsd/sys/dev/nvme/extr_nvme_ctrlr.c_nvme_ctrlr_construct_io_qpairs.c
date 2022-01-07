
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct nvme_qpair {int id; int cpu; size_t domain; int res; } ;
struct nvme_controller {int dstrd; int max_hw_pend_io; int num_io_queues; size_t domain; int dev; struct nvme_qpair* ioq; int resource; } ;
struct TYPE_2__ {size_t pc_domain; } ;


 int CPU_FFS (int *) ;
 int M_NVME ;
 int M_WAITOK ;
 int M_ZERO ;
 int NVME_CAP_LO_MQES (int ) ;
 int NVME_IO_ENTRIES ;
 int NVME_IO_TRACKERS ;
 int NVME_MAX_IO_TRACKERS ;
 int NVME_MIN_IO_TRACKERS ;
 int QP (struct nvme_controller*,int) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int bus_bind_intr (int ,int ,int) ;
 int * cpuset_domain ;
 int device_get_unit (int ) ;
 int * doorbell ;
 struct nvme_qpair* malloc (int,int ,int) ;
 int max (int,int ) ;
 int min (int,int) ;
 int nvme_mmio_offsetof (int ) ;
 int nvme_mmio_read_4 (struct nvme_controller*,int ) ;
 int nvme_qpair_construct (struct nvme_qpair*,int,int,struct nvme_controller*) ;
 TYPE_1__* pcpu_find (int) ;
 int rman_get_size (int ) ;

__attribute__((used)) static int
nvme_ctrlr_construct_io_qpairs(struct nvme_controller *ctrlr)
{
 struct nvme_qpair *qpair;
 uint32_t cap_lo;
 uint16_t mqes;
 int c, error, i, n;
 int num_entries, num_trackers, max_entries;
 max_entries =
     (rman_get_size(ctrlr->resource) - nvme_mmio_offsetof(doorbell[0])) /
     (1 << (ctrlr->dstrd + 1));
 num_entries = NVME_IO_ENTRIES;
 TUNABLE_INT_FETCH("hw.nvme.io_entries", &num_entries);
 cap_lo = nvme_mmio_read_4(ctrlr, cap_lo);
 mqes = NVME_CAP_LO_MQES(cap_lo);
 num_entries = min(num_entries, mqes + 1);
 num_entries = min(num_entries, max_entries);

 num_trackers = NVME_IO_TRACKERS;
 TUNABLE_INT_FETCH("hw.nvme.io_trackers", &num_trackers);

 num_trackers = max(num_trackers, NVME_MIN_IO_TRACKERS);
 num_trackers = min(num_trackers, NVME_MAX_IO_TRACKERS);





 num_trackers = min(num_trackers, (num_entries-1));







 ctrlr->max_hw_pend_io = num_trackers * ctrlr->num_io_queues * 3 / 4;

 ctrlr->ioq = malloc(ctrlr->num_io_queues * sizeof(struct nvme_qpair),
     M_NVME, M_ZERO | M_WAITOK);

 for (i = c = n = 0; i < ctrlr->num_io_queues; i++, c += n) {
  qpair = &ctrlr->ioq[i];





  qpair->id = i + 1;
  if (ctrlr->num_io_queues > 1) {

   for (n = 1; QP(ctrlr, c + n) == i; n++)
    ;

   qpair->cpu = c + (device_get_unit(ctrlr->dev)+n/2) % n;
   qpair->domain = pcpu_find(qpair->cpu)->pc_domain;
  } else {
   qpair->cpu = CPU_FFS(&cpuset_domain[ctrlr->domain]) - 1;
   qpair->domain = ctrlr->domain;
  }





  error = nvme_qpair_construct(qpair, num_entries, num_trackers,
      ctrlr);
  if (error)
   return (error);





  if (ctrlr->num_io_queues > 1)
   bus_bind_intr(ctrlr->dev, qpair->res, qpair->cpu);
 }

 return (0);
}
