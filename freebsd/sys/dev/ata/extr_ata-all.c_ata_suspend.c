
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int flags; scalar_t__ state; int state_mtx; int sim; int poll_callout; } ;
typedef int device_t ;


 scalar_t__ ATA_IDLE ;
 int ATA_PERIODIC_POLL ;
 int ENXIO ;
 int PRIBIO ;
 int callout_drain (int *) ;
 struct ata_channel* device_get_softc (int ) ;
 int hz ;
 int msleep (struct ata_channel*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_freeze_simq (int ,int) ;

int
ata_suspend(device_t dev)
{
    struct ata_channel *ch;


    if (!dev || !(ch = device_get_softc(dev)))
 return ENXIO;

    if (ch->flags & ATA_PERIODIC_POLL)
 callout_drain(&ch->poll_callout);
    mtx_lock(&ch->state_mtx);
    xpt_freeze_simq(ch->sim, 1);
    while (ch->state != ATA_IDLE)
 msleep(ch, &ch->state_mtx, PRIBIO, "atasusp", hz/100);
    mtx_unlock(&ch->state_mtx);
    return(0);
}
