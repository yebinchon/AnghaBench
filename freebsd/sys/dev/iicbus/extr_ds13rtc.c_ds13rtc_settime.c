
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int tv_sec; } ;
struct time_regs {int hour; int month; int year; int wday; int day; int min; int sec; } ;
struct ds13rtc_softc {scalar_t__ osfaddr; scalar_t__ secaddr; scalar_t__ use_century; scalar_t__ use_ampm; int dev; scalar_t__ is_binary_counter; } ;
struct bcd_clocktime {int year; int hour; int mon; int dow; int day; int min; int sec; scalar_t__ ispm; } ;
typedef int device_t ;


 int CLOCK_DBG_WRITE ;
 int DS13xx_B_HOUR_AMPM ;
 int DS13xx_B_HOUR_PM ;
 int DS13xx_B_MONTH_CENTURY ;
 int DS13xx_B_STATUS_OSF ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 int clock_ts_to_bcd (struct timespec*,struct bcd_clocktime*,scalar_t__) ;
 struct ds13rtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int read_reg (struct ds13rtc_softc*,scalar_t__,int*) ;
 scalar_t__ utc_offset () ;
 int write_reg (struct ds13rtc_softc*,scalar_t__,int) ;
 int write_timeregs (struct ds13rtc_softc*,struct time_regs*) ;
 int write_timeword (struct ds13rtc_softc*,int ) ;

__attribute__((used)) static int
ds13rtc_settime(device_t dev, struct timespec *ts)
{
 struct bcd_clocktime bct;
 struct time_regs tregs;
 struct ds13rtc_softc *sc;
 int err;
 uint8_t cflag, statreg, pmflags;

 sc = device_get_softc(dev);





 ts->tv_sec -= utc_offset();


 if (sc->is_binary_counter)
  return (write_timeword(sc, ts->tv_sec));

 clock_ts_to_bcd(ts, &bct, sc->use_ampm);
 clock_dbgprint_bcd(sc->dev, CLOCK_DBG_WRITE, &bct);


 pmflags = 0;
 if (sc->use_ampm) {
  pmflags = DS13xx_B_HOUR_AMPM;
  if (bct.ispm)
   pmflags |= DS13xx_B_HOUR_PM;
 }


 cflag = 0;
 if (sc->use_century) {
  if (bct.year >= 2000)
   cflag |= DS13xx_B_MONTH_CENTURY;
 }

 tregs.sec = bct.sec;
 tregs.min = bct.min;
 tregs.hour = bct.hour | pmflags;
 tregs.day = bct.day;
 tregs.month = bct.mon | cflag;
 tregs.year = bct.year & 0xff;
 tregs.wday = bct.dow;





 if ((err = write_timeregs(sc, &tregs)) != 0)
  goto errout;
 if (sc->osfaddr != sc->secaddr) {
  if ((err = read_reg(sc, sc->osfaddr, &statreg)) != 0)
   goto errout;
  if (statreg & DS13xx_B_STATUS_OSF) {
   statreg &= ~DS13xx_B_STATUS_OSF;
   err = write_reg(sc, sc->osfaddr, statreg);
  }
 }

errout:

 if (err != 0)
  device_printf(dev, "cannot update RTC time\n");

 return (err);
}
