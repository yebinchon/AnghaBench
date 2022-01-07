
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar71xx_wdog_softc {int reboot_from_watchdog; int dev; scalar_t__ debug; scalar_t__ armed; } ;
typedef int device_t ;


 int AR71XX_RST_WDOG_CONTROL ;
 int ATH_READ_REG (int ) ;
 int ATH_WRITE_REG (int ,int ) ;
 int EVENTHANDLER_REGISTER (int ,int ,struct ar71xx_wdog_softc*,int ) ;
 int RST_WDOG_ACTION_NOACTION ;
 int RST_WDOG_LAST ;
 int ar71xx_wdog_sysctl (int ) ;
 int ar71xx_wdog_watchdog_fn ;
 struct ar71xx_wdog_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int watchdog_list ;

__attribute__((used)) static int
ar71xx_wdog_attach(device_t dev)
{
 struct ar71xx_wdog_softc *sc = device_get_softc(dev);


 sc->reboot_from_watchdog = 0;
 sc->armed = 0;
 sc->debug = 0;

 if (ATH_READ_REG(AR71XX_RST_WDOG_CONTROL) & RST_WDOG_LAST) {
  device_printf (dev,
      "Previous reset was due to watchdog timeout\n");
  sc->reboot_from_watchdog = 1;
 }

 ATH_WRITE_REG(AR71XX_RST_WDOG_CONTROL, RST_WDOG_ACTION_NOACTION);

 sc->dev = dev;
 EVENTHANDLER_REGISTER(watchdog_list, ar71xx_wdog_watchdog_fn, sc, 0);
 ar71xx_wdog_sysctl(dev);

 return (0);
}
