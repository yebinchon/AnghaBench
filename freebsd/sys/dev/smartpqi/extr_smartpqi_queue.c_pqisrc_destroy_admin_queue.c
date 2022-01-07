
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int admin_queue_dma_mem; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int PQI_ADMIN_QUEUE_CONF_FUNC_DEL_Q_PAIR ;
 int PQI_STATUS_SUCCESS ;
 int os_dma_mem_free (TYPE_1__*,int *) ;
 int pqisrc_create_delete_adminq (TYPE_1__*,int ) ;

int pqisrc_destroy_admin_queue(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;

 DBG_FUNC("IN\n");




 os_dma_mem_free(softs, &softs->admin_queue_dma_mem);

 DBG_FUNC("OUT\n");
 return ret;
}
