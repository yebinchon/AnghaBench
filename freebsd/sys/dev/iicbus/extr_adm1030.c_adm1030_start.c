
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_rpm; int default_rpm; int (* set ) (struct pmac_fan*,int) ;int * read; scalar_t__ zone; int name; scalar_t__ min_rpm; } ;
struct adm1030_softc {TYPE_1__ fan; int enum_hook; int sc_addr; int sc_dev; } ;
typedef int device_t ;


 scalar_t__ adm1030_set ;
 int adm1030_write_byte (int ,int ,int,int) ;
 int config_intrhook_disestablish (int *) ;
 struct adm1030_softc* device_get_softc (int ) ;
 int pmac_thermal_fan_register (TYPE_1__*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
adm1030_start(void *xdev)
{
 struct adm1030_softc *sc;

 device_t dev = (device_t) xdev;

 sc = device_get_softc(dev);


 adm1030_write_byte(sc->sc_dev, sc->sc_addr, 0x1, 0x1);
 adm1030_write_byte(sc->sc_dev, sc->sc_addr, 0x0, 0x95);
 adm1030_write_byte(sc->sc_dev, sc->sc_addr, 0x23, 0x91);


 sc->fan.min_rpm = 0;
 sc->fan.max_rpm = 0x0F;
 sc->fan.default_rpm = 2;

 strcpy(sc->fan.name, "MDD Case fan");
 sc->fan.zone = 0;
 sc->fan.read = ((void*)0);
 sc->fan.set = (int (*)(struct pmac_fan *, int))adm1030_set;
 config_intrhook_disestablish(&sc->enum_hook);

 pmac_thermal_fan_register(&sc->fan);
}
