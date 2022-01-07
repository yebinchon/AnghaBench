
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_channel {int pm_level; int mtx; int r_mem; int unit; int r_irq; int ih; int reset_timer; int pm_timer; int sim; int path; scalar_t__ resetting; } ;
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
 struct mvs_channel* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mvs_ch_deinit (int ) ;
 int mvs_dmafini (int ) ;
 int mvs_slotsfree (int ) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static int
mvs_ch_detach(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 xpt_async(AC_LOST_DEVICE, ch->path, ((void*)0));

 if (ch->resetting) {
  ch->resetting = 0;
  xpt_release_simq(ch->sim, TRUE);
 }
 xpt_free_path(ch->path);
 xpt_bus_deregister(cam_sim_path(ch->sim));
 cam_sim_free(ch->sim, TRUE);
 mtx_unlock(&ch->mtx);

 if (ch->pm_level > 3)
  callout_drain(&ch->pm_timer);
 callout_drain(&ch->reset_timer);
 bus_teardown_intr(dev, ch->r_irq, ch->ih);
 bus_release_resource(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);

 mvs_ch_deinit(dev);
 mvs_slotsfree(dev);
 mvs_dmafini(dev);

 bus_release_resource(dev, SYS_RES_MEMORY, ch->unit, ch->r_mem);
 mtx_destroy(&ch->mtx);
 return (0);
}
