
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct jz4780_rtc_softc {int dummy; } ;
typedef int device_t ;


 scalar_t__ CSR_READ (struct jz4780_rtc_softc*,int ) ;
 int EIO ;
 int JZ_RTC_TIMEOUT ;
 int JZ_RTSR ;
 struct jz4780_rtc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
jz4780_rtc_gettime(device_t dev, struct timespec *ts)
{
 struct jz4780_rtc_softc *sc;
 uint32_t val1, val2;
 int timeout;

 sc = device_get_softc(dev);

 timeout = JZ_RTC_TIMEOUT;
 val2 = CSR_READ(sc, JZ_RTSR);
 do {
  val1 = val2;
  val2 = CSR_READ(sc, JZ_RTSR);
 } while (val1 != val2 && timeout-- >= 0);

 if (timeout < 0)
  return (EIO);


 ts->tv_sec = val1;
 ts->tv_nsec = 0;
 return 0;
}
