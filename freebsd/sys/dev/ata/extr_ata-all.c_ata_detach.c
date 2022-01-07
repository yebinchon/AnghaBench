
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free ) (int ) ;} ;
struct ata_channel {int flags; int state_mtx; TYPE_1__ dma; int * r_irq; int ih; int * sim; int path; int conntask; int poll_callout; int state; } ;
typedef int device_t ;


 int AC_LOST_DEVICE ;
 int ATA_IRQ_RID ;
 int ATA_PERIODIC_POLL ;
 int ATA_STALL_QUEUE ;
 int ENXIO ;
 int SYS_RES_IRQ ;
 int TRUE ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int callout_drain (int *) ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 struct ata_channel* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_thread ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

int
ata_detach(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);


    if (!ch->r_irq)
 return ENXIO;


    mtx_lock(&ch->state_mtx);
    ch->state |= ATA_STALL_QUEUE;
    mtx_unlock(&ch->state_mtx);
    if (ch->flags & ATA_PERIODIC_POLL)
 callout_drain(&ch->poll_callout);

    taskqueue_drain(taskqueue_thread, &ch->conntask);

 mtx_lock(&ch->state_mtx);
 xpt_async(AC_LOST_DEVICE, ch->path, ((void*)0));
 xpt_free_path(ch->path);
 xpt_bus_deregister(cam_sim_path(ch->sim));
 cam_sim_free(ch->sim, TRUE);
 ch->sim = ((void*)0);
 mtx_unlock(&ch->state_mtx);


    bus_teardown_intr(dev, ch->r_irq, ch->ih);
    bus_release_resource(dev, SYS_RES_IRQ, ATA_IRQ_RID, ch->r_irq);
    ch->r_irq = ((void*)0);


    if (ch->dma.free)
 ch->dma.free(dev);

    mtx_destroy(&ch->state_mtx);
    return 0;
}
