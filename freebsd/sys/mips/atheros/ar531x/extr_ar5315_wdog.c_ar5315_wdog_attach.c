
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5315_wdog_softc {int dev; scalar_t__ debug; scalar_t__ armed; scalar_t__ reboot_from_watchdog; } ;
typedef int device_t ;


 int AR5315_WDOG_CTL_IGNORE ;
 int ATH_WRITE_REG (int ,int ) ;
 int EVENTHANDLER_REGISTER (int ,int ,struct ar5315_wdog_softc*,int ) ;
 int ar5315_wdog_sysctl (int ) ;
 int ar5315_wdog_watchdog_fn ;
 int ar531x_wdog_ctl () ;
 struct ar5315_wdog_softc* device_get_softc (int ) ;
 int watchdog_list ;

__attribute__((used)) static int
ar5315_wdog_attach(device_t dev)
{
 struct ar5315_wdog_softc *sc = device_get_softc(dev);


 sc->reboot_from_watchdog = 0;
 sc->armed = 0;
 sc->debug = 0;
 ATH_WRITE_REG(ar531x_wdog_ctl(), AR5315_WDOG_CTL_IGNORE);

 sc->dev = dev;
 EVENTHANDLER_REGISTER(watchdog_list, ar5315_wdog_watchdog_fn, sc, 0);
 ar5315_wdog_sysctl(dev);

 return (0);
}
