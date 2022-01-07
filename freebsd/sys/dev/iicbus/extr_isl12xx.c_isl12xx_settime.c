
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tregs ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct time_regs {int hour; int year; int month; int day; int min; int sec; } ;
struct isl12xx_softc {int dev; int busdev; int use_ampm; } ;
struct bcd_clocktime {int hour; int year; int mon; int day; int min; int sec; scalar_t__ ispm; } ;
typedef int device_t ;


 int CLOCK_DBG_WRITE ;
 int IIC_WAIT ;
 int ISL12XX_24HR_FLAG ;
 int ISL12XX_PM_FLAG ;
 int ISL12XX_SC_REG ;
 int ISL12XX_SR_REG ;
 int ISL12XX_SR_W0C_BITS ;
 int ISL12XX_SR_WRTC ;
 int WAITFLAGS ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 int clock_ts_to_bcd (struct timespec*,struct bcd_clocktime*,int ) ;
 struct isl12xx_softc* device_get_softc (int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;
 int iicdev_writeto (int ,int ,struct time_regs*,int,int ) ;
 int isl12xx_read1 (struct isl12xx_softc*,int ,int*) ;
 int isl12xx_write1 (struct isl12xx_softc*,int ,int) ;
 scalar_t__ utc_offset () ;

__attribute__((used)) static int
isl12xx_settime(device_t dev, struct timespec *ts)
{
 struct isl12xx_softc *sc = device_get_softc(dev);
 struct bcd_clocktime bct;
 struct time_regs tregs;
 int err;
 uint8_t ampmflags, sreg;





 ts->tv_sec -= utc_offset();
 ts->tv_nsec = 0;
 clock_ts_to_bcd(ts, &bct, sc->use_ampm);
 clock_dbgprint_bcd(sc->dev, CLOCK_DBG_WRITE, &bct);


 if (!sc->use_ampm)
  ampmflags = ISL12XX_24HR_FLAG;
 else
  ampmflags = bct.ispm ? ISL12XX_PM_FLAG : 0;

 tregs.sec = bct.sec;
 tregs.min = bct.min;
 tregs.hour = bct.hour | ampmflags;
 tregs.day = bct.day;
 tregs.month = bct.mon;
 tregs.year = bct.year % 100;
 if ((err = iicbus_request_bus(sc->busdev, sc->dev, IIC_WAIT)) != 0)
  return (err);
 if ((err = isl12xx_read1(sc, ISL12XX_SR_REG, &sreg)) == 0) {
  sreg |= ISL12XX_SR_WRTC | ISL12XX_SR_W0C_BITS;
  if ((err = isl12xx_write1(sc, ISL12XX_SR_REG, sreg)) == 0) {
   err = iicdev_writeto(sc->dev, ISL12XX_SC_REG, &tregs,
       sizeof(tregs), WAITFLAGS);
   sreg &= ~ISL12XX_SR_WRTC;
   isl12xx_write1(sc, ISL12XX_SR_REG, sreg);
  }
 }
 iicbus_release_bus(sc->busdev, sc->dev);

 return (err);
}
