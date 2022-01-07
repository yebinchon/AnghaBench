
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_channel {int resetting; int reset_timer; int sim; } ;
typedef void* device_t ;


 int ATA_S_BUSY ;
 int ATA_S_DRQ ;
 int TRUE ;
 scalar_t__ bootverbose ;
 int callout_schedule (int *,int) ;
 struct mvs_channel* device_get_softc (void*) ;
 int device_printf (void*,char*,...) ;
 int hz ;
 int mvs_wait (void*,int ,int,int ) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void
mvs_reset_to(void *arg)
{
 device_t dev = arg;
 struct mvs_channel *ch = device_get_softc(dev);
 int t;

 if (ch->resetting == 0)
  return;
 ch->resetting--;
 if ((t = mvs_wait(dev, 0, ATA_S_BUSY | ATA_S_DRQ, 0)) >= 0) {
  if (bootverbose) {
   device_printf(dev,
       "MVS reset: device ready after %dms\n",
       (310 - ch->resetting) * 100);
  }
  ch->resetting = 0;
  xpt_release_simq(ch->sim, TRUE);
  return;
 }
 if (ch->resetting == 0) {
  device_printf(dev,
      "MVS reset: device not ready after 31000ms\n");
  xpt_release_simq(ch->sim, TRUE);
  return;
 }
 callout_schedule(&ch->reset_timer, hz / 10);
}
