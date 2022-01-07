
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_channel {int mtx; scalar_t__ oslots; int sim; } ;
typedef int device_t ;


 int PRIBIO ;
 struct siis_channel* device_get_softc (int ) ;
 int hz ;
 int msleep (struct siis_channel*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int siis_ch_deinit (int ) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static int
siis_ch_suspend(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 xpt_freeze_simq(ch->sim, 1);
 while (ch->oslots)
  msleep(ch, &ch->mtx, PRIBIO, "siissusp", hz/100);
 siis_ch_deinit(dev);
 mtx_unlock(&ch->mtx);
 return (0);
}
