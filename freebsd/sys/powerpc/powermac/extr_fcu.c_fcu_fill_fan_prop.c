
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int type ;
struct fcu_softc {TYPE_2__* sc_fans; int sc_dev; } ;
typedef int phandle_t ;
typedef int location ;
typedef int id ;
typedef int device_t ;
struct TYPE_3__ {int zone; int min_rpm; int max_rpm; int (* read ) (struct pmac_fan*) ;int (* set ) (struct pmac_fan*,int) ;int default_rpm; int name; } ;
struct TYPE_4__ {scalar_t__ type; int id; TYPE_1__ fan; int setpoint; int dev; } ;


 scalar_t__ FCU_FAN_PWM ;
 scalar_t__ FCU_FAN_RPM ;
 int OF_getprop (int ,char*,...) ;
 struct fcu_softc* device_get_softc (int ) ;
 int fcu_fan_get_rpm (TYPE_2__*) ;
 scalar_t__ fcu_fan_set_pwm ;
 scalar_t__ fcu_fan_set_rpm ;
 int fcu_rpm_shift ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
fcu_fill_fan_prop(device_t dev)
{
 phandle_t child;
 struct fcu_softc *sc;
 u_int id[12];
 char location[144];
 char type[96];
 int i = 0, j, len = 0, prop_len, prev_len = 0;

 sc = device_get_softc(dev);

 child = ofw_bus_get_node(dev);


 prop_len = OF_getprop(child, "hwctrl-location", location,
         sizeof(location));
 while (len < prop_len) {
  if (sc->sc_fans != ((void*)0)) {
   strcpy(sc->sc_fans[i].fan.name, location + len);
  }
  prev_len = strlen(location + len) + 1;
  len += prev_len;
  i++;
 }
 if (sc->sc_fans == ((void*)0))
  return (i);


 len = 0;
 i = 0;
 prev_len = 0;
 prop_len = OF_getprop(child, "hwctrl-type", type, sizeof(type));
 while (len < prop_len) {
  if (strcmp(type + len, "fan-rpm") == 0)
   sc->sc_fans[i].type = FCU_FAN_RPM;
  else
   sc->sc_fans[i].type = FCU_FAN_PWM;
  prev_len = strlen(type + len) + 1;
  len += prev_len;
  i++;
 }


 prop_len = OF_getprop(child, "hwctrl-id", id, sizeof(id));
 for (j = 0; j < i; j++)
  sc->sc_fans[j].id = ((id[j] >> 8) & 0x0f) % 8;


 prop_len = OF_getprop(child, "hwctrl-zone", id, sizeof(id));
 for (j = 0; j < i; j++)
  sc->sc_fans[j].fan.zone = id[j];


 for (j = 0; j < i; j++) {
  sc->sc_fans[j].dev = sc->sc_dev;
  if (sc->sc_fans[j].type == FCU_FAN_RPM) {
   sc->sc_fans[j].fan.min_rpm = 4800 >> fcu_rpm_shift;
   sc->sc_fans[j].fan.max_rpm = 56000 >> fcu_rpm_shift;
   sc->sc_fans[j].setpoint =
       fcu_fan_get_rpm(&sc->sc_fans[j]);
   sc->sc_fans[j].fan.read =
       (int (*)(struct pmac_fan *))(fcu_fan_get_rpm);
   sc->sc_fans[j].fan.set =
       (int (*)(struct pmac_fan *, int))(fcu_fan_set_rpm);
  } else {
   sc->sc_fans[j].fan.min_rpm = 30;
   sc->sc_fans[j].fan.max_rpm = 100;
   sc->sc_fans[j].fan.read = ((void*)0);
   sc->sc_fans[j].fan.set =
       (int (*)(struct pmac_fan *, int))(fcu_fan_set_pwm);
  }
  sc->sc_fans[j].fan.default_rpm = sc->sc_fans[j].fan.max_rpm;
 }

 return (i);
}
