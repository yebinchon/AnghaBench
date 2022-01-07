
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mmc_softc* ich_arg; int ich_func; } ;
struct mmc_softc {TYPE_1__ config_intrhook; int dev; } ;
typedef int device_t ;


 int MMC_LOCK_INIT (struct mmc_softc*) ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 struct mmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mmc_delayed_attach ;

__attribute__((used)) static int
mmc_attach(device_t dev)
{
 struct mmc_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;
 MMC_LOCK_INIT(sc);


 sc->config_intrhook.ich_func = mmc_delayed_attach;
 sc->config_intrhook.ich_arg = sc;
 if (config_intrhook_establish(&sc->config_intrhook) != 0)
  device_printf(dev, "config_intrhook_establish failed\n");
 return (0);
}
