
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1672_softc {int sc_dev; } ;
typedef int device_t ;


 int clock_register (int ,int) ;
 struct ds1672_softc* device_get_softc (int ) ;
 int ds1672_init (int ) ;

__attribute__((used)) static int
ds1672_attach(device_t dev)
{
 struct ds1672_softc *sc = device_get_softc(dev);
 int error;

 sc->sc_dev = dev;
 error = ds1672_init(dev);
 if (error)
  return (error);
 clock_register(dev, 1000);
 return (0);
}
