
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int sc_dev; } ;
struct ar8327_led_cfg {int led_ctrl0; int led_ctrl1; int led_ctrl2; int led_ctrl3; int open_drain; } ;


 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static int
ar8327_fetch_pdata_led(struct arswitch_softc *sc,
    struct ar8327_led_cfg *lcfg)
{
 int val;

 val = 0;
 if (resource_int_value(device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev),
     "led.ctrl0", &val) != 0)
  return (0);
 lcfg->led_ctrl0 = val;

 val = 0;
 if (resource_int_value(device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev),
     "led.ctrl1", &val) != 0)
  return (0);
 lcfg->led_ctrl1 = val;

 val = 0;
 if (resource_int_value(device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev),
     "led.ctrl2", &val) != 0)
  return (0);
 lcfg->led_ctrl2 = val;

 val = 0;
 if (resource_int_value(device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev),
     "led.ctrl3", &val) != 0)
  return (0);
 lcfg->led_ctrl3 = val;

 val = 0;
 if (resource_int_value(device_get_name(sc->sc_dev),
     device_get_unit(sc->sc_dev),
     "led.open_drain", &val) != 0)
  return (0);
 lcfg->open_drain = val;

 return (1);
}
