
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int flags; int poll_callout; int state_mtx; int sim; } ;
typedef int device_t ;


 int ATA_PERIODIC_POLL ;
 int ENXIO ;
 int TRUE ;
 int ata_periodic_poll ;
 int ata_reinit (int ) ;
 int callout_reset (int *,int ,int ,struct ata_channel*) ;
 struct ata_channel* device_get_softc (int ) ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_release_simq (int ,int ) ;

int
ata_resume(device_t dev)
{
    struct ata_channel *ch;
    int error;


    if (!dev || !(ch = device_get_softc(dev)))
 return ENXIO;

 mtx_lock(&ch->state_mtx);
 error = ata_reinit(dev);
 xpt_release_simq(ch->sim, TRUE);
 mtx_unlock(&ch->state_mtx);
 if (ch->flags & ATA_PERIODIC_POLL)
  callout_reset(&ch->poll_callout, hz, ata_periodic_poll, ch);
    return error;
}
