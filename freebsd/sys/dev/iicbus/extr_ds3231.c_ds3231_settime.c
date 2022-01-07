
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int tv_sec; } ;
struct ds3231_softc {int sc_status; scalar_t__ sc_last_c; scalar_t__ sc_use_ampm; int sc_dev; } ;
struct bcd_clocktime {int sec; int min; int hour; int day; int dow; int mon; int year; scalar_t__ ispm; } ;
typedef int device_t ;
typedef int data ;


 int CLOCK_DBG_WRITE ;
 int DS3231_C_MASK ;
 size_t DS3231_DATE ;
 size_t DS3231_HOUR ;
 int DS3231_HOUR_IS_PM ;
 int DS3231_HOUR_USE_AMPM ;
 size_t DS3231_MINS ;
 size_t DS3231_MONTH ;
 size_t DS3231_SECS ;
 int DS3231_STATUS_OSF ;
 size_t DS3231_WEEKDAY ;
 size_t DS3231_YEAR ;
 int IIC_INTRWAIT ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 int clock_ts_to_bcd (struct timespec*,struct bcd_clocktime*,scalar_t__) ;
 struct ds3231_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ds3231_status_read (struct ds3231_softc*) ;
 int ds3231_status_write (struct ds3231_softc*,int ,int ) ;
 int iicdev_writeto (int ,size_t,int*,int,int ) ;
 scalar_t__ utc_offset () ;

__attribute__((used)) static int
ds3231_settime(device_t dev, struct timespec *ts)
{
 int error;
 struct bcd_clocktime bct;
 struct ds3231_softc *sc;
 uint8_t data[7];
 uint8_t pmflags;

 sc = device_get_softc(dev);





 ts->tv_sec -= utc_offset();
 clock_ts_to_bcd(ts, &bct, sc->sc_use_ampm);
 clock_dbgprint_bcd(sc->sc_dev, CLOCK_DBG_WRITE, &bct);


 if (sc->sc_use_ampm) {
  pmflags = DS3231_HOUR_USE_AMPM;
  if (bct.ispm)
   pmflags |= DS3231_HOUR_IS_PM;
 } else
  pmflags = 0;

 data[DS3231_SECS] = bct.sec;
 data[DS3231_MINS] = bct.min;
 data[DS3231_HOUR] = bct.hour | pmflags;
 data[DS3231_DATE] = bct.day;
 data[DS3231_WEEKDAY] = bct.dow + 1;
 data[DS3231_MONTH] = bct.mon;
 data[DS3231_YEAR] = bct.year & 0xff;
 if (sc->sc_last_c)
  data[DS3231_MONTH] |= DS3231_C_MASK;


 error = iicdev_writeto(dev, DS3231_SECS, data, sizeof(data),
     IIC_INTRWAIT);
 if (error != 0) {
  device_printf(dev, "cannot write to RTC.\n");
  return (error);
 }





 if (sc->sc_status & DS3231_STATUS_OSF) {
  if ((error = ds3231_status_read(sc)) != 0) {
   device_printf(dev, "cannot read from RTC.\n");
   return (error);
  }
  sc->sc_status &= ~DS3231_STATUS_OSF;
  if ((error = ds3231_status_write(sc, 0, 0)) != 0) {
   device_printf(dev, "cannot write to RTC.\n");
   return (error);
  }
 }

 return (error);
}
