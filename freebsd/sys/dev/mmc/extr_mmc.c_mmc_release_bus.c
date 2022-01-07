
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int * owner; } ;
typedef int * device_t ;


 int MMCBR_RELEASE_HOST (int ,int *) ;
 int MMC_LOCK (struct mmc_softc*) ;
 int MMC_UNLOCK (struct mmc_softc*) ;
 int device_get_parent (int *) ;
 struct mmc_softc* device_get_softc (int *) ;
 int panic (char*) ;

__attribute__((used)) static int
mmc_release_bus(device_t busdev, device_t dev)
{
 struct mmc_softc *sc;
 int err;

 sc = device_get_softc(busdev);

 MMC_LOCK(sc);
 if (!sc->owner)
  panic("mmc: releasing unowned bus.");
 if (sc->owner != dev)
  panic("mmc: you don't own the bus.  game over.");
 MMC_UNLOCK(sc);
 err = MMCBR_RELEASE_HOST(device_get_parent(busdev), busdev);
 if (err)
  return (err);
 MMC_LOCK(sc);
 sc->owner = ((void*)0);
 MMC_UNLOCK(sc);
 return (0);
}
