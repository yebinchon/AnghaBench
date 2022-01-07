
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbb_softc {int scl_low_timeout; scalar_t__ udelay; } ;
typedef scalar_t__ sbintime_t ;
typedef int device_t ;


 int C_PREL (int) ;
 int DELAY (scalar_t__) ;
 scalar_t__ I2C_GETSCL (int ) ;
 int I2C_SETSCL (int ,int) ;
 int MIN (int,int) ;
 int SBT_1MS ;
 int SBT_1US ;
 struct iicbb_softc* device_get_softc (int ) ;
 int pause_sbt (char*,int ,int ,int ) ;
 scalar_t__ sbinuptime () ;

__attribute__((used)) static void
iicbb_setscl(device_t dev, int val)
{
 struct iicbb_softc *sc = device_get_softc(dev);
 sbintime_t now, end;
 int fast_timeout;

 I2C_SETSCL(dev, val);
 DELAY(sc->udelay);


 if (!val)
  return;


 end = sbinuptime() + sc->scl_low_timeout * SBT_1US;
 fast_timeout = MIN(sc->scl_low_timeout, 1000);
 while (fast_timeout > 0) {
  if (I2C_GETSCL(dev))
   return;
  I2C_SETSCL(dev, 1);
  DELAY(sc->udelay);
  fast_timeout -= sc->udelay;
 }

 while (!I2C_GETSCL(dev)) {
  now = sbinuptime();
  if (now >= end)
   break;
  pause_sbt("iicbb-scl-low", SBT_1MS, C_PREL(8), 0);
 }

}
