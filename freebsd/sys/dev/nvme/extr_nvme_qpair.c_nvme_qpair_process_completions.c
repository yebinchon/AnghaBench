
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_tracker {int dummy; } ;
struct nvme_qpair {size_t cq_head; size_t num_entries; int phase; int cq_hdbl_off; TYPE_1__* ctrlr; struct nvme_completion* cpl; int sq_head; struct nvme_tracker** act_tr; int queuemem_map; int dma_tag; int is_enabled; int num_intr_handler_calls; } ;
struct nvme_completion {size_t cid; int sqhd; int status; } ;
struct TYPE_2__ {int bus_handle; int bus_tag; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int ERROR_PRINT_ALL ;
 int KASSERT (int ,char*) ;
 int NVME_STATUS_GET_P (int ) ;
 scalar_t__ SCHEDULER_STOPPED () ;
 scalar_t__ __predict_false (int) ;
 int atomic_store_rel_int (size_t*,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_space_write_4 (int ,int ,int ,size_t) ;
 scalar_t__ dumping ;
 int nvme_completion_swapbytes (struct nvme_completion*) ;
 int nvme_dump_completion (struct nvme_completion*) ;
 int nvme_printf (TYPE_1__*,char*) ;
 int nvme_qpair_complete_tracker (struct nvme_qpair*,struct nvme_tracker*,struct nvme_completion*,int ) ;

bool
nvme_qpair_process_completions(struct nvme_qpair *qpair)
{
 struct nvme_tracker *tr;
 struct nvme_completion cpl;
 int done = 0;
 bool in_panic = dumping || SCHEDULER_STOPPED();

 qpair->num_intr_handler_calls++;






 if (!qpair->is_enabled)
  return (0);
 if (__predict_false(in_panic)) {
  if (qpair->cq_head == qpair->num_entries) {





   qpair->cq_head = 0;
   qpair->phase = !qpair->phase;
  } else if (qpair->cq_head == 0) {







   cpl = qpair->cpl[qpair->num_entries - 1];
   nvme_completion_swapbytes(&cpl);
   qpair->phase = !NVME_STATUS_GET_P(cpl.status);
  }
 }

 bus_dmamap_sync(qpair->dma_tag, qpair->queuemem_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 while (1) {
  cpl = qpair->cpl[qpair->cq_head];


  nvme_completion_swapbytes(&cpl);

  if (NVME_STATUS_GET_P(cpl.status) != qpair->phase)
   break;

  tr = qpair->act_tr[cpl.cid];

  if (tr != ((void*)0)) {
   nvme_qpair_complete_tracker(qpair, tr, &cpl, ERROR_PRINT_ALL);
   qpair->sq_head = cpl.sqhd;
   done++;
  } else if (!in_panic) {
   nvme_printf(qpair->ctrlr,
       "cpl does not map to outstanding cmd\n");

   nvme_dump_completion(&qpair->cpl[qpair->cq_head]);
   KASSERT(0, ("received completion for unknown cmd"));
  }







  if (++qpair->cq_head == qpair->num_entries) {
   atomic_store_rel_int(&qpair->cq_head, 0);
   qpair->phase = !qpair->phase;
  }

  bus_space_write_4(qpair->ctrlr->bus_tag, qpair->ctrlr->bus_handle,
      qpair->cq_hdbl_off, qpair->cq_head);
 }
 return (done != 0);
}
