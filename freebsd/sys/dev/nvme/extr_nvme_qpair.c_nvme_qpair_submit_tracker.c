
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_tracker {size_t cid; int timer; struct nvme_request* req; } ;
struct TYPE_2__ {size_t cid; } ;
struct nvme_request {TYPE_1__ cmd; scalar_t__ timeout; } ;
struct nvme_qpair {size_t sq_tail; size_t num_entries; int num_cmds; int sq_tdbl_off; struct nvme_controller* ctrlr; int queuemem_map; int dma_tag; int * cmd; int cpu; struct nvme_tracker** act_tr; int lock; } ;
struct nvme_controller {int timeout_period; int bus_handle; int bus_tag; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int MA_OWNED ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_space_write_4 (int ,int ,int ,size_t) ;
 int callout_reset_on (int *,int,int ,struct nvme_tracker*,int ) ;
 int hz ;
 int memcpy (int *,TYPE_1__*,int) ;
 int mtx_assert (int *,int ) ;
 int nvme_timeout ;
 int wmb () ;

void
nvme_qpair_submit_tracker(struct nvme_qpair *qpair, struct nvme_tracker *tr)
{
 struct nvme_request *req;
 struct nvme_controller *ctrlr;

 mtx_assert(&qpair->lock, MA_OWNED);

 req = tr->req;
 req->cmd.cid = tr->cid;
 qpair->act_tr[tr->cid] = tr;
 ctrlr = qpair->ctrlr;

 if (req->timeout)
  callout_reset_on(&tr->timer, ctrlr->timeout_period * hz,
      nvme_timeout, tr, qpair->cpu);


 memcpy(&qpair->cmd[qpair->sq_tail], &req->cmd, sizeof(req->cmd));

 if (++qpair->sq_tail == qpair->num_entries)
  qpair->sq_tail = 0;

 bus_dmamap_sync(qpair->dma_tag, qpair->queuemem_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);





 wmb();


 bus_space_write_4(qpair->ctrlr->bus_tag, qpair->ctrlr->bus_handle,
     qpair->sq_tdbl_off, qpair->sq_tail);
 qpair->num_cmds++;
}
