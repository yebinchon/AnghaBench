
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_rtc_softc {int res; int dev; } ;
typedef int device_t ;


 int CSR_READ (struct jz4780_rtc_softc*,int ) ;
 int ENXIO ;
 int JZ_HSPR ;
 int JZ_RTSR ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int clock_register (int ,int) ;
 struct jz4780_rtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int jz4780_rtc_detach (int ) ;
 int jz4780_rtc_spec ;
 int jz4780_rtc_write (struct jz4780_rtc_softc*,int ,int) ;

__attribute__((used)) static int
jz4780_rtc_attach(device_t dev)
{
 struct jz4780_rtc_softc *sc = device_get_softc(dev);
 uint32_t scratch;
 int ret;

 sc->dev = dev;

 if (bus_alloc_resources(dev, jz4780_rtc_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }

 scratch = CSR_READ(sc, JZ_HSPR);
 if (scratch != 0x12345678) {
  ret = jz4780_rtc_write(sc, JZ_HSPR, 0x12345678);
  if (ret == 0)
   ret = jz4780_rtc_write(sc, JZ_RTSR, 0);
  if (ret) {
   device_printf(dev, "Unable to write RTC registers\n");
   jz4780_rtc_detach(dev);
   return (ret);
  }
 }
 clock_register(dev, 1000000);
 return (0);
}
