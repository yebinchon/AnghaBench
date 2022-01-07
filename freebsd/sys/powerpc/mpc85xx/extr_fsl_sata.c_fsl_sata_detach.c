
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_sata_channel {int pm_level; int mtx; int r_mem; int unit; int r_irq; int ih; int pm_timer; int sim; int path; } ;
typedef int device_t ;


 int AC_LOST_DEVICE ;
 int ATA_IRQ_RID ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TRUE ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 struct fsl_sata_channel* device_get_softc (int ) ;
 int fsl_sata_deinit (int ) ;
 int fsl_sata_dmafini (int ) ;
 int fsl_sata_slotsfree (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static int
fsl_sata_detach(device_t dev)
{
 struct fsl_sata_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 xpt_async(AC_LOST_DEVICE, ch->path, ((void*)0));

 xpt_free_path(ch->path);
 xpt_bus_deregister(cam_sim_path(ch->sim));
 cam_sim_free(ch->sim, TRUE);
 mtx_unlock(&ch->mtx);

 if (ch->pm_level > 3)
  callout_drain(&ch->pm_timer);
 bus_teardown_intr(dev, ch->r_irq, ch->ih);
 bus_release_resource(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);

 fsl_sata_deinit(dev);
 fsl_sata_slotsfree(dev);
 fsl_sata_dmafini(dev);

 bus_release_resource(dev, SYS_RES_MEMORY, ch->unit, ch->r_mem);
 mtx_destroy(&ch->mtx);
 return (0);
}
