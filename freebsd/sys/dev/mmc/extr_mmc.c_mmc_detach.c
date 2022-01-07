
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int dummy; } ;
typedef int device_t ;


 int MMC_LOCK_DESTROY (struct mmc_softc*) ;
 struct mmc_softc* device_get_softc (int ) ;
 int mmc_delete_cards (struct mmc_softc*,int) ;
 int mmc_power_down (struct mmc_softc*) ;

__attribute__((used)) static int
mmc_detach(device_t dev)
{
 struct mmc_softc *sc = device_get_softc(dev);
 int err;

 err = mmc_delete_cards(sc, 1);
 if (err != 0)
  return (err);
 mmc_power_down(sc);
 MMC_LOCK_DESTROY(sc);

 return (0);
}
