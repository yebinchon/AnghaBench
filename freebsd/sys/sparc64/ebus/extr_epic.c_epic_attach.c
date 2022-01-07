
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epic_softc {void* sc_led_dev_power; void* sc_led_dev_alert; int sc_res; } ;
typedef int device_t ;


 int ENXIO ;
 int EPIC_FW_LED_READ (struct epic_softc*,int ) ;
 int EPIC_FW_VERSION ;
 int EPIC_LOCK_INIT (struct epic_softc*) ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resources (int ,int ,int ) ;
 struct epic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int epic_led_alert ;
 int epic_led_power ;
 int epic_res_spec ;
 void* led_create (int ,struct epic_softc*,char*) ;

__attribute__((used)) static int
epic_attach(device_t dev)
{
 struct epic_softc *sc;

 sc = device_get_softc(dev);
 if (bus_alloc_resources(dev, epic_res_spec, sc->sc_res)) {
  device_printf(dev, "failed to allocate resources\n");
  bus_release_resources(dev, epic_res_spec, sc->sc_res);
  return (ENXIO);
 }

 EPIC_LOCK_INIT(sc);

 if (bootverbose)
  device_printf(dev, "version 0x%x\n",
      EPIC_FW_LED_READ(sc, EPIC_FW_VERSION));

 sc->sc_led_dev_alert = led_create(epic_led_alert, sc, "alert");
 sc->sc_led_dev_power = led_create(epic_led_power, sc, "power");

 return (0);
}
