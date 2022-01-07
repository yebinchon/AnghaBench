
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int dummy; } ;
struct ds1307_softc {int sc_use_ampm; int sc_dev; scalar_t__ sc_mcp7941x; } ;
struct bcd_clocktime {int ispm; int sec; int min; int hour; int day; int mon; int year; scalar_t__ nsec; } ;
typedef int device_t ;
typedef int data ;


 int CLOCK_DBG_READ ;
 size_t DS1307_DATE ;
 int DS1307_DATE_MASK ;
 size_t DS1307_HOUR ;
 int DS1307_HOUR_IS_PM ;
 int DS1307_HOUR_MASK_12HR ;
 int DS1307_HOUR_MASK_24HR ;
 int DS1307_HOUR_USE_AMPM ;
 size_t DS1307_MINS ;
 int DS1307_MINS_MASK ;
 size_t DS1307_MONTH ;
 int DS1307_MONTH_MASK ;
 size_t DS1307_SECS ;
 int DS1307_SECS_CH ;
 int DS1307_SECS_MASK ;
 size_t DS1307_YEAR ;
 int DS1307_YEAR_MASK ;
 int EINVAL ;
 int IIC_INTRWAIT ;
 int clock_bcd_to_ts (struct bcd_clocktime*,struct timespec*,int) ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 struct ds1307_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int iicdev_readfrom (int ,size_t,int*,int,int ) ;

__attribute__((used)) static int
ds1307_gettime(device_t dev, struct timespec *ts)
{
 int error;
 struct bcd_clocktime bct;
 struct ds1307_softc *sc;
 uint8_t data[7], hourmask, st_mask;

 sc = device_get_softc(dev);
 error = iicdev_readfrom(sc->sc_dev, DS1307_SECS, data, sizeof(data),
     IIC_INTRWAIT);
 if (error != 0) {
  device_printf(dev, "cannot read from RTC.\n");
  return (error);
 }


 if (sc->sc_mcp7941x)
  st_mask = 0x80;
 else
  st_mask = 0x00;

 if (((data[DS1307_SECS] & DS1307_SECS_CH) ^ st_mask) != 0)
  return (EINVAL);


 if (data[DS1307_HOUR] & DS1307_HOUR_USE_AMPM) {
  sc->sc_use_ampm = 1;
  hourmask = DS1307_HOUR_MASK_12HR;
 } else
  hourmask = DS1307_HOUR_MASK_24HR;

 bct.nsec = 0;
 bct.ispm = (data[DS1307_HOUR] & DS1307_HOUR_IS_PM) != 0;
 bct.sec = data[DS1307_SECS] & DS1307_SECS_MASK;
 bct.min = data[DS1307_MINS] & DS1307_MINS_MASK;
 bct.hour = data[DS1307_HOUR] & hourmask;
 bct.day = data[DS1307_DATE] & DS1307_DATE_MASK;
 bct.mon = data[DS1307_MONTH] & DS1307_MONTH_MASK;
 bct.year = data[DS1307_YEAR] & DS1307_YEAR_MASK;

 clock_dbgprint_bcd(sc->sc_dev, CLOCK_DBG_READ, &bct);
 return (clock_bcd_to_ts(&bct, ts, sc->sc_use_ampm));
}
