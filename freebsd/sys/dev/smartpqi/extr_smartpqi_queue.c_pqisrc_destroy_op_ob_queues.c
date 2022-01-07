
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num_op_obq; int op_obq_dma_mem; TYPE_2__* op_ob_q; } ;
typedef TYPE_1__ pqisrc_softstate_t ;
struct TYPE_7__ {int created; int q_id; } ;
typedef TYPE_2__ ob_queue_t ;


 int DBG_ERR (char*,int ) ;
 int DBG_FUNC (char*) ;
 int PQI_STATUS_SUCCESS ;
 int os_dma_mem_free (TYPE_1__*,int *) ;
 int pqisrc_delete_op_queue (TYPE_1__*,int ,int) ;

void pqisrc_destroy_op_ob_queues(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;
 int i;

 DBG_FUNC("IN\n");

 for (i = 0; i < softs->num_op_obq; i++) {
  ob_queue_t *op_ob_q = ((void*)0);
  op_ob_q = &softs->op_ob_q[i];
  if (op_ob_q->created == 1) {
   ret = pqisrc_delete_op_queue(softs, op_ob_q->q_id, 0);
   if (ret) {
    DBG_ERR("Failed to Delete OB Q %d\n",op_ob_q->q_id);
   }
   op_ob_q->created = 0;
  }
 }


 os_dma_mem_free(softs, &softs->op_obq_dma_mem);
 DBG_FUNC("OUT\n");
}
