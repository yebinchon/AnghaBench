
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pqi_regs_res0; int pqi_regs_rid0; int pqi_dev; scalar_t__ pqi_parent_dmat; } ;
struct TYPE_5__ {TYPE_1__ os_specific; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int SYS_RES_MEMORY ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int ,int *) ;

void os_resource_free(pqisrc_softstate_t *softs)
{
 if(softs->os_specific.pqi_parent_dmat)
  bus_dma_tag_destroy(softs->os_specific.pqi_parent_dmat);

 if (softs->os_specific.pqi_regs_res0 != ((void*)0))
                bus_release_resource(softs->os_specific.pqi_dev,
      SYS_RES_MEMORY,
    softs->os_specific.pqi_regs_rid0,
    softs->os_specific.pqi_regs_res0);
}
