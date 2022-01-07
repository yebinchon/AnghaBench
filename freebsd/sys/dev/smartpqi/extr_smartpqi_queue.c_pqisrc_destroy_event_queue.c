
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int created; int q_id; } ;
struct TYPE_7__ {int event_q_dma_mem; TYPE_1__ event_q; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int DBG_ERR (char*,int ) ;
 int DBG_FUNC (char*) ;
 int PQI_STATUS_SUCCESS ;
 int os_dma_mem_free (TYPE_2__*,int *) ;
 int pqisrc_delete_op_queue (TYPE_2__*,int ,int) ;

void pqisrc_destroy_event_queue(pqisrc_softstate_t *softs)
{
 DBG_FUNC("IN\n");

 if (softs->event_q.created == 1) {
  int ret = PQI_STATUS_SUCCESS;
  ret = pqisrc_delete_op_queue(softs, softs->event_q.q_id, 0);
  if (ret) {
   DBG_ERR("Failed to Delete Event Q %d\n", softs->event_q.q_id);
  }
  softs->event_q.created = 0;
 }


 os_dma_mem_free(softs, &softs->event_q_dma_mem);

 DBG_FUNC("OUT\n");
}
