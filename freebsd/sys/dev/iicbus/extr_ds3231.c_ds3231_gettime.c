
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int dummy; } ;
struct ds3231_softc {int sc_status; int sc_use_ampm; int sc_last_c; int sc_year0; int sc_dev; } ;
struct bcd_clocktime {int sec; int min; int hour; int day; int mon; int year; int ispm; scalar_t__ nsec; } ;
typedef int device_t ;
typedef int data ;


 int CLOCK_DBG_READ ;
 int DS3231_C_MASK ;
 size_t DS3231_DATE ;
 int DS3231_DATE_MASK ;
 size_t DS3231_HOUR ;
 int DS3231_HOUR_IS_PM ;
 int DS3231_HOUR_MASK_12HR ;
 int DS3231_HOUR_MASK_24HR ;
 int DS3231_HOUR_USE_AMPM ;
 size_t DS3231_MINS ;
 int DS3231_MINS_MASK ;
 size_t DS3231_MONTH ;
 int DS3231_MONTH_MASK ;
 size_t DS3231_SECS ;
 int DS3231_SECS_MASK ;
 int DS3231_STATUS_OSF ;
 size_t DS3231_YEAR ;
 int DS3231_YEAR_MASK ;
 int EINVAL ;
 int IIC_INTRWAIT ;
 int clock_bcd_to_ts (struct bcd_clocktime*,struct timespec*,int) ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 struct ds3231_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ds3231_status_read (struct ds3231_softc*) ;
 int iicdev_readfrom (int ,size_t,int*,int,int ) ;

__attribute__((used)) static int
ds3231_gettime(device_t dev, struct timespec *ts)
{
 int c, error;
 struct bcd_clocktime bct;
 struct ds3231_softc *sc;
 uint8_t data[7], hourmask;

 sc = device_get_softc(dev);


 if ((error = ds3231_status_read(sc)) != 0) {
  device_printf(dev, "cannot read from RTC.\n");
  return (error);
 }
 if (sc->sc_status & DS3231_STATUS_OSF)
  return (EINVAL);

 error = iicdev_readfrom(sc->sc_dev, DS3231_SECS, data, sizeof(data),
     IIC_INTRWAIT);
 if (error != 0) {
  device_printf(dev, "cannot read from RTC.\n");
  return (error);
 }


 if (data[DS3231_HOUR] & DS3231_HOUR_USE_AMPM) {
  sc->sc_use_ampm = 1;
  hourmask = DS3231_HOUR_MASK_12HR;
 } else
  hourmask = DS3231_HOUR_MASK_24HR;

 bct.nsec = 0;
 bct.sec = data[DS3231_SECS] & DS3231_SECS_MASK;
 bct.min = data[DS3231_MINS] & DS3231_MINS_MASK;
 bct.hour = data[DS3231_HOUR] & hourmask;
 bct.day = data[DS3231_DATE] & DS3231_DATE_MASK;
 bct.mon = data[DS3231_MONTH] & DS3231_MONTH_MASK;
 bct.year = data[DS3231_YEAR] & DS3231_YEAR_MASK;
 bct.ispm = data[DS3231_HOUR] & DS3231_HOUR_IS_PM;






 c = (data[DS3231_MONTH] & DS3231_C_MASK) ? 1 : 0;
 if (sc->sc_last_c == -1)
  sc->sc_last_c = c;
 else if (c != sc->sc_last_c) {
  sc->sc_year0 += 0x100;
  sc->sc_last_c = c;
 }
 bct.year |= sc->sc_year0;

 clock_dbgprint_bcd(sc->sc_dev, CLOCK_DBG_READ, &bct);
 return (clock_bcd_to_ts(&bct, ts, sc->sc_use_ampm));
}
