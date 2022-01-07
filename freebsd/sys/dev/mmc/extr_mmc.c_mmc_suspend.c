
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int dummy; } ;
typedef int device_t ;


 int bus_generic_suspend (int ) ;
 struct mmc_softc* device_get_softc (int ) ;
 int mmc_acquire_bus (int ,int ) ;
 int mmc_power_down (struct mmc_softc*) ;
 int mmc_release_bus (int ,int ) ;

__attribute__((used)) static int
mmc_suspend(device_t dev)
{
 struct mmc_softc *sc = device_get_softc(dev);
 int err;

 err = bus_generic_suspend(dev);
 if (err != 0)
  return (err);







 err = mmc_acquire_bus(dev, dev);
 if (err != 0)
  return (err);
 mmc_power_down(sc);
 err = mmc_release_bus(dev, dev);
 return (err);
}
