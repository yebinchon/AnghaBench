
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int isr_lock; int psim; int ppath; int ** sys_res_arcmsr; int * rid; int devmap_callout; } ;
typedef int device_t ;


 int AC_LOST_DEVICE ;
 int ARCMSR_LOCK_ACQUIRE (int *) ;
 int ARCMSR_LOCK_RELEASE (int *) ;
 int SYS_RES_MEMORY ;
 int TRUE ;
 int arcmsr_free_resource (struct AdapterControlBlock*) ;
 int arcmsr_mutex_destroy (struct AdapterControlBlock*) ;
 int arcmsr_shutdown (int ) ;
 int arcmsr_teardown_intr (int ,struct AdapterControlBlock*) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int callout_stop (int *) ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static int arcmsr_detach(device_t dev)
{
 struct AdapterControlBlock *acb=(struct AdapterControlBlock *)device_get_softc(dev);
 int i;

 callout_stop(&acb->devmap_callout);
 arcmsr_teardown_intr(dev, acb);
 arcmsr_shutdown(dev);
 arcmsr_free_resource(acb);
 for(i=0; (acb->sys_res_arcmsr[i]!=((void*)0)) && (i<2); i++) {
  bus_release_resource(dev, SYS_RES_MEMORY, acb->rid[i], acb->sys_res_arcmsr[i]);
 }
 ARCMSR_LOCK_ACQUIRE(&acb->isr_lock);
 xpt_async(AC_LOST_DEVICE, acb->ppath, ((void*)0));
 xpt_free_path(acb->ppath);
 xpt_bus_deregister(cam_sim_path(acb->psim));
 cam_sim_free(acb->psim, TRUE);
 ARCMSR_LOCK_RELEASE(&acb->isr_lock);
 arcmsr_mutex_destroy(acb);
 return (0);
}
