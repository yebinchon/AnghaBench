
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tregs ;
struct timespec {int dummy; } ;
struct time_regs {int day; int hour; int month; int min; int sec; int msec; } ;
struct rtc8583_softc {int dev; int busdev; } ;
struct bcd_clocktime {int nsec; int hour; int day; int mon; int year; int min; int sec; } ;
typedef int device_t ;


 int CLOCK_DBG_READ ;
 int EINVAL ;
 int IIC_WAIT ;
 int RTC8583_SC_REG ;
 int RTC8583_USERSRAM_REG ;
 int bcd2bin (int ) ;
 int bin2bcd (int) ;
 int clock_bcd_to_ts (struct bcd_clocktime*,struct timespec*,int) ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 struct rtc8583_softc* device_get_softc (int ) ;
 int iicbus_release_bus (int ,int ) ;
 int iicbus_request_bus (int ,int ,int ) ;
 int iicdev_readfrom (int ,int ,struct time_regs*,int,int ) ;
 int rtc8583_read1 (struct rtc8583_softc*,int ,int*) ;
 int rtc8583_write1 (struct rtc8583_softc*,int ,int) ;
 int validbcd (int ) ;

__attribute__((used)) static int
rtc8583_gettime(device_t dev, struct timespec *ts)
{
 struct rtc8583_softc *sc;
 struct bcd_clocktime bct;
 struct time_regs tregs;
 uint8_t y, ytmp, sreg;
 int err;

 sc = device_get_softc(dev);


 if ((err = iicdev_readfrom(sc->dev, RTC8583_SC_REG, &tregs, sizeof(tregs),
     IIC_WAIT)) != 0)
  return (err);

 y = tregs.day >> 6;

 rtc8583_read1(sc, RTC8583_USERSRAM_REG, &sreg);







 ytmp = sreg & 0x03;
 if (ytmp != y) {

  sreg += y - ytmp;


  if (ytmp > y)
   sreg += 4;

  if ((err = iicbus_request_bus(sc->busdev, sc->dev, IIC_WAIT)) != 0)
   return (err);
  rtc8583_write1(sc, RTC8583_USERSRAM_REG, sreg);
  iicbus_release_bus(sc->busdev, sc->dev);
 }

 if (!validbcd(tregs.msec))
  return (EINVAL);


 bct.nsec = bcd2bin(tregs.msec) * 10 * 1000 * 1000;
 bct.sec = tregs.sec;
 bct.min = tregs.min;
 bct.hour = tregs.hour & 0x3f;
 bct.day = tregs.day & 0x3f;
 bct.mon = tregs.month & 0x1f;
 bct.year = bin2bcd(sreg % 100);

 clock_dbgprint_bcd(sc->dev, CLOCK_DBG_READ, &bct);
 return (clock_bcd_to_ts(&bct, ts, 0));
}
