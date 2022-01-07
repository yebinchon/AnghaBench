
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_channel {int mtx; int r_mem; int unit; int r_irq; int ih; int sim; int path; int led; } ;
typedef int device_t ;


 int AC_LOST_DEVICE ;
 int ATA_IRQ_RID ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TRUE ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 struct siis_channel* device_get_softc (int ) ;
 int led_destroy (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int siis_ch_deinit (int ) ;
 int siis_dmafini (int ) ;
 int siis_slotsfree (int ) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static int
siis_ch_detach(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);

 led_destroy(ch->led);
 mtx_lock(&ch->mtx);
 xpt_async(AC_LOST_DEVICE, ch->path, ((void*)0));
 xpt_free_path(ch->path);
 xpt_bus_deregister(cam_sim_path(ch->sim));
 cam_sim_free(ch->sim, TRUE);
 mtx_unlock(&ch->mtx);

 bus_teardown_intr(dev, ch->r_irq, ch->ih);
 bus_release_resource(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);

 siis_ch_deinit(dev);
 siis_slotsfree(dev);
 siis_dmafini(dev);

 bus_release_resource(dev, SYS_RES_MEMORY, ch->unit, ch->r_mem);
 mtx_destroy(&ch->mtx);
 return (0);
}
