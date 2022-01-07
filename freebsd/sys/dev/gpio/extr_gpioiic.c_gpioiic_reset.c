
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct gpioiic_softc {int sc_dev; } ;
typedef int device_t ;


 int IIC_ENOADDR ;
 struct gpioiic_softc* device_get_softc (int ) ;
 int gpioiic_reset_bus (int ) ;

__attribute__((used)) static int
gpioiic_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct gpioiic_softc *sc;

 sc = device_get_softc(dev);
 gpioiic_reset_bus(sc->sc_dev);

 return (IIC_ENOADDR);
}
