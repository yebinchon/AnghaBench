
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct time_regs {int hour; int year; int wday; int month; int day; int min; int sec; } ;
struct nxprtc_softc {scalar_t__ chiptype; int flags; int dev; int busdev; int tmcaddr; int use_ampm; } ;
struct bcd_clocktime {int year; int hour; int dow; int mon; int day; scalar_t__ ispm; int min; int sec; } ;
typedef int device_t ;


 int CLOCK_DBG_WRITE ;
 int IIC_WAIT ;
 int PCF8523_B_HOUR_PM ;
 int PCF8563_B_MONTH_C ;
 int PCF85xx_B_CS1_STOP ;
 int PCF85xx_R_CS1 ;
 int SC_F_CPOL ;
 int TMR_TICKS_SEC ;
 scalar_t__ TYPE_PCF8563 ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 int clock_ts_to_bcd (struct timespec*,struct bcd_clocktime*,int ) ;
 struct nxprtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int getnanotime (struct timespec*) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;
 int pcf8523_battery_check (struct nxprtc_softc*) ;
 int read_reg (struct nxprtc_softc*,int ,int*) ;
 scalar_t__ utc_offset () ;
 int write_reg (struct nxprtc_softc*,int ,int) ;
 int write_timeregs (struct nxprtc_softc*,struct time_regs*) ;

__attribute__((used)) static int
nxprtc_settime(device_t dev, struct timespec *ts)
{
 struct bcd_clocktime bct;
 struct time_regs tregs;
 struct nxprtc_softc *sc;
 int err;
 uint8_t cflag, cs1;

 sc = device_get_softc(dev);
 if ((err = iicbus_request_bus(sc->busdev, sc->dev, IIC_WAIT)) != 0)
  return (err);
 if ((err = read_reg(sc, PCF85xx_R_CS1, &cs1)) != 0)
  goto errout;
 cs1 |= PCF85xx_B_CS1_STOP;
 if ((err = write_reg(sc, PCF85xx_R_CS1, cs1)) != 0)
  goto errout;


 getnanotime(ts);
 ts->tv_sec -= utc_offset();
 ts->tv_nsec = 0;
 clock_ts_to_bcd(ts, &bct, sc->use_ampm);
 clock_dbgprint_bcd(sc->dev, CLOCK_DBG_WRITE, &bct);


 cflag = 0;
 if (sc->chiptype == TYPE_PCF8563) {
  if ((sc->flags & SC_F_CPOL) != 0) {
   if (bct.year >= 0x2000)
    cflag = PCF8563_B_MONTH_C;
  } else if (bct.year < 0x2000)
    cflag = PCF8563_B_MONTH_C;
 }

 tregs.sec = bct.sec;
 tregs.min = bct.min;
 tregs.hour = bct.hour | (bct.ispm ? PCF8523_B_HOUR_PM : 0);
 tregs.day = bct.day;
 tregs.month = bct.mon;
 tregs.year = (bct.year & 0xff) | cflag;
 tregs.wday = bct.dow;




 if ((err = write_timeregs(sc, &tregs)) != 0)
  goto errout;

 if ((err = write_reg(sc, sc->tmcaddr, TMR_TICKS_SEC)) != 0)
  return (err);

 cs1 &= ~PCF85xx_B_CS1_STOP;
 err = write_reg(sc, PCF85xx_R_CS1, cs1);





 pcf8523_battery_check(sc);

errout:

 iicbus_release_bus(sc->busdev, sc->dev);

 if (err != 0)
  device_printf(dev, "cannot write RTC time\n");

 return (err);
}
