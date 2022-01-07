
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int rcb_t ;
struct TYPE_5__ {int max_outstanding_io; int * rcb; int * sg_dma_desc; } ;
typedef TYPE_1__ pqisrc_softstate_t ;


 int DBG_FUNC (char*) ;
 int os_dma_mem_free (TYPE_1__*,int *) ;
 int os_mem_free (TYPE_1__*,void*,size_t) ;

void pqisrc_free_rcb(pqisrc_softstate_t *softs, int req_count)
{

 uint32_t num_req;
 size_t size;
 int i;

 DBG_FUNC("IN\n");
 num_req = softs->max_outstanding_io + 1;
 size = num_req * sizeof(rcb_t);
 for (i = 1; i < req_count; i++)
  os_dma_mem_free(softs, &softs->sg_dma_desc[i]);
 os_mem_free(softs, (void *)softs->rcb, size);
 softs->rcb = ((void*)0);
 DBG_FUNC("OUT\n");
}
