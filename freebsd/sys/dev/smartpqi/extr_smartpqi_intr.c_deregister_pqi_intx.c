
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ msi_ctx; int ** pqi_irq; int * pqi_irq_rid; scalar_t__* intr_registered; int * intrcookie; int pqi_dev; } ;
struct TYPE_6__ {TYPE_1__ os_specific; } ;
typedef TYPE_2__ pqisrc_softstate_t ;
typedef int pqi_intr_ctx_t ;
typedef int device_t ;


 int DBG_FUNC (char*) ;
 scalar_t__ FALSE ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int os_mem_free (TYPE_2__*,char*,int) ;

void deregister_pqi_intx(pqisrc_softstate_t *softs)
{
 device_t dev;

 DBG_FUNC("IN\n");

 dev = softs->os_specific.pqi_dev;
 if (softs->os_specific.pqi_irq[0] != ((void*)0)) {
  if (softs->os_specific.intr_registered[0]) {
   bus_teardown_intr(dev, softs->os_specific.pqi_irq[0],
     softs->os_specific.intrcookie[0]);
   softs->os_specific.intr_registered[0] = FALSE;
  }
  bus_release_resource(dev, SYS_RES_IRQ,
   softs->os_specific.pqi_irq_rid[0],
   softs->os_specific.pqi_irq[0]);
  softs->os_specific.pqi_irq[0] = ((void*)0);
  os_mem_free(softs, (char*)softs->os_specific.msi_ctx, sizeof(pqi_intr_ctx_t));
 }

 DBG_FUNC("OUT\n");
}
