
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tregs ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct time_regs {int day; int month; int hour; int min; int sec; int msec; } ;
struct rtc8583_softc {int dev; int busdev; } ;
struct bcd_clocktime {int day; int year; int mon; int hour; int min; int sec; } ;
typedef int device_t ;


 int CLOCK_DBG_WRITE ;
 int IIC_WAIT ;
 int RTC8583_SC_REG ;
 int RTC8583_USERSRAM_REG ;
 int bcd2bin (int) ;
 int bin2bcd (int) ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 int clock_ts_to_bcd (struct timespec*,struct bcd_clocktime*,int) ;
 struct rtc8583_softc* device_get_softc (int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;
 int rtc8583_write1 (struct rtc8583_softc*,int ,int ) ;
 int rtc8583_writeto (int ,int ,struct time_regs*,int,int ) ;
 scalar_t__ utc_offset () ;

__attribute__((used)) static int
rtc8583_settime(device_t dev, struct timespec *ts)
{
 struct rtc8583_softc *sc;
 struct bcd_clocktime bct;
 struct time_regs tregs;
 uint8_t sreg;
 int err;

 sc = device_get_softc(dev);
 ts->tv_sec -= utc_offset();
 clock_ts_to_bcd(ts, &bct, 0);
 clock_dbgprint_bcd(sc->dev, CLOCK_DBG_WRITE, &bct);


 tregs.msec = bin2bcd(ts->tv_nsec / (10 * 1000 * 1000));
 tregs.sec = bct.sec;
 tregs.min = bct.min;
 tregs.hour = bct.hour;
 tregs.day = bct.day | (bct.year & 0x03 << 6);
 tregs.month = bct.mon;

 if ((err = iicbus_request_bus(sc->busdev, sc->dev, IIC_WAIT)) != 0)
  return (err);
 err = rtc8583_writeto(sc->dev, RTC8583_SC_REG, &tregs,
     sizeof(tregs), IIC_WAIT);
 sreg = bcd2bin(bct.year & 0xff);

 rtc8583_write1(sc, RTC8583_USERSRAM_REG, sreg);
 iicbus_release_bus(sc->busdev, sc->dev);

 return (err);
}
