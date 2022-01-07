
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int err_buf_dma_mem; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int os_dma_mem_free (TYPE_1__*,int *) ;
 int os_resource_free (TYPE_1__*) ;
 int pqi_reset (TYPE_1__*) ;

void pqisrc_sis_uninit(pqisrc_softstate_t *softs)
{
 DBG_FUNC("IN\n");

 os_dma_mem_free(softs, &softs->err_buf_dma_mem);
 os_resource_free(softs);
 pqi_reset(softs);

 DBG_FUNC("OUT\n");
}
