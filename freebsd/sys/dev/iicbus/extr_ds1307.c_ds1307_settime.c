
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int tv_sec; } ;
struct ds1307_softc {int sc_dev; scalar_t__ sc_mcp7941x; scalar_t__ sc_use_ampm; } ;
struct bcd_clocktime {int sec; int min; int hour; int day; int dow; int mon; int year; scalar_t__ ispm; } ;
typedef int device_t ;
typedef int data ;


 int CLOCK_DBG_WRITE ;
 size_t DS1307_DATE ;
 size_t DS1307_HOUR ;
 int DS1307_HOUR_IS_PM ;
 int DS1307_HOUR_USE_AMPM ;
 size_t DS1307_MINS ;
 size_t DS1307_MONTH ;
 size_t DS1307_SECS ;
 size_t DS1307_WEEKDAY ;
 size_t DS1307_YEAR ;
 int IIC_INTRWAIT ;
 int MCP7941X_MONTH_LPYR ;
 int MCP7941X_SECS_ST ;
 int MCP7941X_WEEKDAY_VBATEN ;
 int bcd2bin (int) ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 int clock_ts_to_bcd (struct timespec*,struct bcd_clocktime*,scalar_t__) ;
 struct ds1307_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int iicdev_writeto (int ,size_t,int*,int,int ) ;
 scalar_t__ utc_offset () ;

__attribute__((used)) static int
ds1307_settime(device_t dev, struct timespec *ts)
{
 struct bcd_clocktime bct;
 struct ds1307_softc *sc;
 int error, year;
 uint8_t data[7];
 uint8_t pmflags;

 sc = device_get_softc(dev);





 ts->tv_sec -= utc_offset();
 clock_ts_to_bcd(ts, &bct, sc->sc_use_ampm);
 clock_dbgprint_bcd(sc->sc_dev, CLOCK_DBG_WRITE, &bct);


 if (sc->sc_use_ampm) {
  pmflags = DS1307_HOUR_USE_AMPM;
  if (bct.ispm)
   pmflags |= DS1307_HOUR_IS_PM;
 } else
  pmflags = 0;

 data[DS1307_SECS] = bct.sec;
 data[DS1307_MINS] = bct.min;
 data[DS1307_HOUR] = bct.hour | pmflags;
 data[DS1307_DATE] = bct.day;
 data[DS1307_WEEKDAY] = bct.dow;
 data[DS1307_MONTH] = bct.mon;
 data[DS1307_YEAR] = bct.year & 0xff;
 if (sc->sc_mcp7941x) {
  data[DS1307_SECS] |= MCP7941X_SECS_ST;
  data[DS1307_WEEKDAY] |= MCP7941X_WEEKDAY_VBATEN;
  year = bcd2bin(bct.year >> 8) * 100 + bcd2bin(bct.year & 0xff);
  if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
   data[DS1307_MONTH] |= MCP7941X_MONTH_LPYR;
 }

 error = iicdev_writeto(sc->sc_dev, DS1307_SECS, data, sizeof(data),
     IIC_INTRWAIT);
 if (error != 0)
  device_printf(dev, "cannot write to RTC.\n");

 return (error);
}
