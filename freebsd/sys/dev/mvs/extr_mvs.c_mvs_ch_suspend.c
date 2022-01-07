
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_channel {int mtx; int sim; int reset_timer; scalar_t__ resetting; scalar_t__ oslots; } ;
typedef int device_t ;


 int PRIBIO ;
 int TRUE ;
 int callout_stop (int *) ;
 struct mvs_channel* device_get_softc (int ) ;
 int hz ;
 int msleep (struct mvs_channel*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mvs_ch_deinit (int ) ;
 int xpt_freeze_simq (int ,int) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static int
mvs_ch_suspend(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 xpt_freeze_simq(ch->sim, 1);
 while (ch->oslots)
  msleep(ch, &ch->mtx, PRIBIO, "mvssusp", hz/100);

 if (ch->resetting) {
  ch->resetting = 0;
  callout_stop(&ch->reset_timer);
  xpt_release_simq(ch->sim, TRUE);
 }
 mvs_ch_deinit(dev);
 mtx_unlock(&ch->mtx);
 return (0);
}
