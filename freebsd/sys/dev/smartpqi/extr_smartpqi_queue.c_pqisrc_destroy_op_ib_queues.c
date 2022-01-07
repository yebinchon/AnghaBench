
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num_op_raid_ibq; int op_ibq_dma_mem; TYPE_2__* op_aio_ib_q; TYPE_2__* op_raid_ib_q; } ;
typedef TYPE_1__ pqisrc_softstate_t ;
struct TYPE_7__ {int created; int lockcreated; int lock; int q_id; } ;
typedef TYPE_2__ ib_queue_t ;


 int DBG_ERR (char*,int ) ;
 int DBG_FUNC (char*) ;
 int OS_UNINIT_PQILOCK (int *) ;
 int PQI_STATUS_SUCCESS ;
 int os_dma_mem_free (TYPE_1__*,int *) ;
 int pqisrc_delete_op_queue (TYPE_1__*,int ,int) ;

void pqisrc_destroy_op_ib_queues(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;
 ib_queue_t *op_ib_q = ((void*)0);
 int i;

 DBG_FUNC("IN\n");

 for (i = 0; i < softs->num_op_raid_ibq; i++) {

  op_ib_q = &softs->op_raid_ib_q[i];
  if (op_ib_q->created == 1) {
   ret = pqisrc_delete_op_queue(softs, op_ib_q->q_id, 1);
   if (ret) {
    DBG_ERR("Failed to Delete Raid IB Q %d\n",op_ib_q->q_id);
   }
   op_ib_q->created = 0;
  }

        if(op_ib_q->lockcreated==1){
  OS_UNINIT_PQILOCK(&op_ib_q->lock);
             op_ib_q->lockcreated = 0;
        }


  op_ib_q = &softs->op_aio_ib_q[i];
  if (op_ib_q->created == 1) {
   ret = pqisrc_delete_op_queue(softs, op_ib_q->q_id, 1);
   if (ret) {
    DBG_ERR("Failed to Delete AIO IB Q %d\n",op_ib_q->q_id);
   }
   op_ib_q->created = 0;
  }

        if(op_ib_q->lockcreated==1){
  OS_UNINIT_PQILOCK(&op_ib_q->lock);
  op_ib_q->lockcreated = 0;
        }
 }


 os_dma_mem_free(softs, &softs->op_ibq_dma_mem);
 DBG_FUNC("OUT\n");
}
