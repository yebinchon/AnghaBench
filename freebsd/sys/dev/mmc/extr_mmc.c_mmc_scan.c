
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int dev; } ;
typedef int device_t ;


 int bus_generic_attach (int ) ;
 int device_printf (int ,char*) ;
 int mmc_acquire_bus (int ,int ) ;
 int mmc_go_discovery (struct mmc_softc*) ;
 int mmc_release_bus (int ,int ) ;

__attribute__((used)) static void
mmc_scan(struct mmc_softc *sc)
{
 device_t dev = sc->dev;
 int err;

 err = mmc_acquire_bus(dev, dev);
 if (err != 0) {
  device_printf(dev, "Failed to acquire bus for scanning\n");
  return;
 }
 mmc_go_discovery(sc);
 err = mmc_release_bus(dev, dev);
 if (err != 0) {
  device_printf(dev, "Failed to release bus after scanning\n");
  return;
 }
 (void)bus_generic_attach(dev);
}
