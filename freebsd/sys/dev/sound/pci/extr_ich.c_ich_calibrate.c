
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int * ich_func; } ;
struct sc_info {int ac97rate; int flags; int dev; TYPE_1__ intrhook; struct sc_chinfo* ch; } ;
struct sc_chinfo {scalar_t__ regbase; int blkcnt; scalar_t__ blksz; scalar_t__ desc_addr; int buffer; } ;


 int DELAY (int) ;
 int ICH_CALIBRATE_DONE ;
 int ICH_LOCK (struct sc_info*) ;
 scalar_t__ ICH_REG_PI_BASE ;
 scalar_t__ ICH_REG_X_BDBAR ;
 scalar_t__ ICH_REG_X_CIV ;
 scalar_t__ ICH_REG_X_CR ;
 int ICH_UNLOCK (struct sc_info*) ;
 int ICH_X_CR_RPBM ;
 int ICH_X_CR_RR ;
 int KASSERT (int,char*) ;
 scalar_t__ bootverbose ;
 int config_intrhook_disestablish (TYPE_1__*) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ ich_rd (struct sc_info*,scalar_t__,int) ;
 int ich_setstatus (struct sc_info*) ;
 int ich_wr (struct sc_info*,scalar_t__,int,int) ;
 int ichchan_setblocksize (int ,struct sc_chinfo*,int) ;
 int microtime (struct timeval*) ;
 int printf (char*,...) ;
 int sndbuf_getmaxsize (int ) ;

__attribute__((used)) static void
ich_calibrate(void *arg)
{
 struct sc_info *sc;
 struct sc_chinfo *ch;
 struct timeval t1, t2;
 uint8_t ociv, nciv;
 uint32_t wait_us, actual_48k_rate, oblkcnt;

 sc = (struct sc_info *)arg;
 ICH_LOCK(sc);
 ch = &sc->ch[1];

 if (sc->intrhook.ich_func != ((void*)0)) {
  config_intrhook_disestablish(&sc->intrhook);
  sc->intrhook.ich_func = ((void*)0);
 }
 KASSERT(ch->regbase == ICH_REG_PI_BASE, ("wrong direction"));

 oblkcnt = ch->blkcnt;
 ch->blkcnt = 2;
 sc->flags |= ICH_CALIBRATE_DONE;
 ICH_UNLOCK(sc);
 ichchan_setblocksize(0, ch, sndbuf_getmaxsize(ch->buffer) >> 1);
 ICH_LOCK(sc);
 sc->flags &= ~ICH_CALIBRATE_DONE;
 ociv = ich_rd(sc, ch->regbase + ICH_REG_X_CIV, 1);
 nciv = ociv;
 ich_wr(sc, ch->regbase + ICH_REG_X_BDBAR, (uint32_t)(ch->desc_addr), 4);


 microtime(&t1);
 ich_wr(sc, ch->regbase + ICH_REG_X_CR, ICH_X_CR_RPBM, 1);


 do {
  microtime(&t2);
  if (t2.tv_sec - t1.tv_sec > 1)
   break;
  nciv = ich_rd(sc, ch->regbase + ICH_REG_X_CIV, 1);
 } while (nciv == ociv);


 ich_wr(sc, ch->regbase + ICH_REG_X_CR, 0, 1);


 DELAY(100);
 ich_wr(sc, ch->regbase + ICH_REG_X_CR, ICH_X_CR_RR, 1);
 ch->blkcnt = oblkcnt;


 wait_us = ((t2.tv_sec - t1.tv_sec) * 1000000) + t2.tv_usec - t1.tv_usec;

 if (nciv == ociv) {
  device_printf(sc->dev, "ac97 link rate calibration timed out after %d us\n", wait_us);
  sc->flags |= ICH_CALIBRATE_DONE;
  ICH_UNLOCK(sc);
  ich_setstatus(sc);
  return;
 }


 if (wait_us > 0)
  actual_48k_rate = ((uint64_t)ch->blksz * 250000) / wait_us;
 else
  actual_48k_rate = 48000;

 if (actual_48k_rate < 47500 || actual_48k_rate > 48500) {
  sc->ac97rate = actual_48k_rate;
 } else {
  sc->ac97rate = 48000;
 }

 if (bootverbose || sc->ac97rate != 48000) {
  device_printf(sc->dev, "measured ac97 link rate at %d Hz", actual_48k_rate);
  if (sc->ac97rate != actual_48k_rate)
   printf(", will use %d Hz", sc->ac97rate);
   printf("\n");
 }
 sc->flags |= ICH_CALIBRATE_DONE;
 ICH_UNLOCK(sc);

 ich_setstatus(sc);

 return;
}
