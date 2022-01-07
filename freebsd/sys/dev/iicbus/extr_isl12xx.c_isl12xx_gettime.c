
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tregs ;
struct timespec {int dummy; } ;
struct time_regs {int hour; int year; int month; int day; int min; int sec; } ;
struct isl12xx_softc {int use_ampm; int dev; int busdev; } ;
struct bcd_clocktime {int hour; int ispm; int year; int mon; int day; int min; int sec; scalar_t__ nsec; } ;
typedef int device_t ;


 int CLOCK_DBG_READ ;
 int EINVAL ;
 int IIC_WAIT ;
 int ISL12XX_24HR_FLAG ;
 int ISL12XX_PM_FLAG ;
 int ISL12XX_SC_REG ;
 int ISL12XX_SR_REG ;
 int ISL12XX_SR_RTCF ;
 int ISL12xx_12HR_MASK ;
 int ISL12xx_24HR_MASK ;
 int WAITFLAGS ;
 int clock_bcd_to_ts (struct bcd_clocktime*,struct timespec*,int) ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 struct isl12xx_softc* device_get_softc (int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;
 int iicdev_readfrom (int ,int ,struct time_regs*,int,int ) ;
 int isl12xx_read1 (struct isl12xx_softc*,int ,int*) ;

__attribute__((used)) static int
isl12xx_gettime(device_t dev, struct timespec *ts)
{
 struct isl12xx_softc *sc = device_get_softc(dev);
 struct bcd_clocktime bct;
 struct time_regs tregs;
 int err;
 uint8_t hourmask, sreg;




 if ((err = iicbus_request_bus(sc->busdev, sc->dev, IIC_WAIT)) == 0) {
  if ((err = isl12xx_read1(sc, ISL12XX_SR_REG, &sreg)) == 0) {
   err = iicdev_readfrom(sc->dev, ISL12XX_SC_REG, &tregs,
       sizeof(tregs), WAITFLAGS);
  }
  iicbus_release_bus(sc->busdev, sc->dev);
 }
 if (err != 0)
  return (err);


 if (sreg & ISL12XX_SR_RTCF)
  return (EINVAL);


 if (tregs.hour & ISL12XX_24HR_FLAG) {
  hourmask = ISL12xx_24HR_MASK;
 } else {
  sc->use_ampm = 1;
  hourmask = ISL12xx_12HR_MASK;
 }

 bct.nsec = 0;
 bct.sec = tregs.sec;
 bct.min = tregs.min;
 bct.hour = tregs.hour & hourmask;
 bct.day = tregs.day;
 bct.mon = tregs.month;
 bct.year = tregs.year;
 bct.ispm = tregs.hour & ISL12XX_PM_FLAG;

 clock_dbgprint_bcd(sc->dev, CLOCK_DBG_READ, &bct);
 return (clock_bcd_to_ts(&bct, ts, sc->use_ampm));
}
