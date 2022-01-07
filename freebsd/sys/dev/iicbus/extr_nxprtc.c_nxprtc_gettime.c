
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct timespec {int tv_sec; } ;
struct time_regs {int sec; int hour; int min; int day; int month; int year; } ;
struct nxprtc_softc {scalar_t__ chiptype; scalar_t__ use_ampm; int dev; int flags; int busdev; } ;
struct bcd_clocktime {int nsec; int ispm; int sec; int min; int hour; int day; int mon; int year; } ;
typedef int device_t ;


 int CLOCK_DBG_READ ;
 int EINVAL ;
 int IIC_WAIT ;
 int PCF8523_B_HOUR_PM ;
 int PCF8563_B_MONTH_C ;
 int PCF85xx_B_CS1_STOP ;
 int PCF85xx_B_SECOND_OS ;
 int PCF85xx_M_12HOUR ;
 int PCF85xx_M_24HOUR ;
 int PCF85xx_M_DAY ;
 int PCF85xx_M_MINUTE ;
 int PCF85xx_M_MONTH ;
 int PCF85xx_M_SECOND ;
 int PCF85xx_M_YEAR ;
 int PCF85xx_R_CS1 ;
 int SC_F_CPOL ;
 int TMR_TICKS_SEC ;
 scalar_t__ TYPE_PCF8563 ;
 int clock_bcd_to_ts (struct bcd_clocktime*,struct timespec*,scalar_t__) ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 struct nxprtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;
 int read_reg (struct nxprtc_softc*,int ,int*) ;
 int read_timeregs (struct nxprtc_softc*,struct time_regs*,int*) ;
 scalar_t__ utc_offset () ;

__attribute__((used)) static int
nxprtc_gettime(device_t dev, struct timespec *ts)
{
 struct bcd_clocktime bct;
 struct time_regs tregs;
 struct nxprtc_softc *sc;
 int err;
 uint8_t cs1, hourmask, tmrcount;

 sc = device_get_softc(dev);







 if ((err = iicbus_request_bus(sc->busdev, sc->dev, IIC_WAIT)) == 0) {
  if ((err = read_timeregs(sc, &tregs, &tmrcount)) == 0) {
   err = read_reg(sc, PCF85xx_R_CS1, &cs1);
  }
  iicbus_release_bus(sc->busdev, sc->dev);
 }
 if (err != 0)
  return (err);

 if ((tregs.sec & PCF85xx_B_SECOND_OS) || (cs1 & PCF85xx_B_CS1_STOP)) {
  device_printf(dev, "RTC clock not running\n");
  return (EINVAL);
 }

 if (sc->use_ampm)
  hourmask = PCF85xx_M_12HOUR;
 else
  hourmask = PCF85xx_M_24HOUR;

 bct.nsec = ((uint64_t)tmrcount * 1000000000) / TMR_TICKS_SEC;
 bct.ispm = (tregs.hour & PCF8523_B_HOUR_PM) != 0;
 bct.sec = tregs.sec & PCF85xx_M_SECOND;
 bct.min = tregs.min & PCF85xx_M_MINUTE;
 bct.hour = tregs.hour & hourmask;
 bct.day = tregs.day & PCF85xx_M_DAY;
 bct.mon = tregs.month & PCF85xx_M_MONTH;
 bct.year = tregs.year & PCF85xx_M_YEAR;







 if (sc->chiptype == TYPE_PCF8563) {
  if (tregs.month & PCF8563_B_MONTH_C) {
   if (bct.year < 0x70)
    sc->flags |= SC_F_CPOL;
  } else if (bct.year >= 0x70)
    sc->flags |= SC_F_CPOL;
 }

 clock_dbgprint_bcd(sc->dev, CLOCK_DBG_READ, &bct);
 err = clock_bcd_to_ts(&bct, ts, sc->use_ampm);
 ts->tv_sec += utc_offset();

 return (err);
}
