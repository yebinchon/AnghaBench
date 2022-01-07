
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ u_char ;
struct iicbus_softc {scalar_t__ bus_freq; } ;
typedef int device_t ;


 struct iicbus_softc* IICBUS_SOFTC (int ) ;
 scalar_t__ IIC_SLOW ;

__attribute__((used)) static u_int
iicbus_get_frequency(device_t dev, u_char speed)
{
 struct iicbus_softc *sc = IICBUS_SOFTC(dev);






 if (sc->bus_freq == 0 || speed == IIC_SLOW)
  return (100000);
 return (sc->bus_freq);
}
