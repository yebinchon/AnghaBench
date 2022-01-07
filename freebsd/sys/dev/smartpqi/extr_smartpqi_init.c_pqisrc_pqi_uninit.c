
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int lockcreated; int lock; } ;
struct TYPE_17__ {int devlist_lockcreated; int num_op_raid_ibq; int admin_queue_dma_mem; TYPE_3__ admin_ib_queue; int taglist; scalar_t__ max_outstanding_io; int event_q_dma_mem; int op_obq_dma_mem; int op_ibq_dma_mem; TYPE_2__* op_aio_ib_q; TYPE_1__* op_raid_ib_q; int devlist_lock; } ;
typedef TYPE_4__ pqisrc_softstate_t ;
struct TYPE_15__ {int lockcreated; int lock; } ;
struct TYPE_14__ {int lockcreated; int lock; } ;


 int DBG_ERR (char*) ;
 int DBG_FUNC (char*) ;
 int OS_UNINIT_PQILOCK (int *) ;
 int PQI_STATUS_SUCCESS ;
 int os_complete_outstanding_cmds_nodevice (TYPE_4__*) ;
 int os_dma_mem_free (TYPE_4__*,int *) ;
 int os_uninit_spinlock (int *) ;
 int pqisrc_complete_internal_cmds (TYPE_4__*) ;
 int pqisrc_destroy_taglist (TYPE_4__*,int *) ;
 scalar_t__ pqisrc_force_sis (TYPE_4__*) ;
 int pqisrc_free_rcb (TYPE_4__*,scalar_t__) ;
 int pqisrc_wait_for_cmnd_complete (TYPE_4__*) ;
 int pqisrc_wait_for_rescan_complete (TYPE_4__*) ;

void pqisrc_pqi_uninit(pqisrc_softstate_t *softs)
{
 int i, ret;

 DBG_FUNC("IN\n");


 pqisrc_wait_for_rescan_complete(softs);


 ret = pqisrc_wait_for_cmnd_complete(softs);


 if(ret != PQI_STATUS_SUCCESS) {
  pqisrc_complete_internal_cmds(softs);
  os_complete_outstanding_cmds_nodevice(softs);
 }

    if(softs->devlist_lockcreated==1){
        os_uninit_spinlock(&softs->devlist_lock);
        softs->devlist_lockcreated = 0;
    }

 for (i = 0; i < softs->num_op_raid_ibq; i++) {

        if(softs->op_raid_ib_q[i].lockcreated==1){
  OS_UNINIT_PQILOCK(&softs->op_raid_ib_q[i].lock);
  softs->op_raid_ib_q[i].lockcreated = 0;
        }


        if(softs->op_aio_ib_q[i].lockcreated==1){
  OS_UNINIT_PQILOCK(&softs->op_aio_ib_q[i].lock);
  softs->op_aio_ib_q[i].lockcreated = 0;
        }
 }


 os_dma_mem_free(softs, &softs->op_ibq_dma_mem);
 os_dma_mem_free(softs, &softs->op_obq_dma_mem);
 os_dma_mem_free(softs, &softs->event_q_dma_mem);


 pqisrc_free_rcb(softs, softs->max_outstanding_io + 1);


 pqisrc_destroy_taglist(softs,&softs->taglist);

 if(softs->admin_ib_queue.lockcreated==1){
  OS_UNINIT_PQILOCK(&softs->admin_ib_queue.lock);
         softs->admin_ib_queue.lockcreated = 0;
 }


 os_dma_mem_free(softs, &softs->admin_queue_dma_mem);


 if (pqisrc_force_sis(softs)) {
  DBG_ERR("Failed to switch back the adapter to SIS mode!\n");
 }

 DBG_FUNC("OUT\n");
}
