
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; } ;
struct jz4780_rtc_softc {int dummy; } ;
typedef int device_t ;


 int JZ_RTSR ;
 struct jz4780_rtc_softc* device_get_softc (int ) ;
 int jz4780_rtc_write (struct jz4780_rtc_softc*,int ,int ) ;

__attribute__((used)) static int
jz4780_rtc_settime(device_t dev, struct timespec *ts)
{
 struct jz4780_rtc_softc *sc;

 sc = device_get_softc(dev);
 return jz4780_rtc_write(sc, JZ_RTSR, ts->tv_sec);
}
