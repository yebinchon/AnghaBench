
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_match {size_t ctrl; int * name; } ;
struct aoagpio_softc {size_t ctrl; char detect_active; int * i2s; scalar_t__ level; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;
typedef int bname ;


 int EINVAL ;
 int ENXIO ;
 int GPIO_CTRL_EXTINT_SET ;
 int OF_getprop (int,char*,char*,int) ;
 int aoagpio_int (int ) ;
 int bzero (char*,int) ;
 struct aoagpio_softc* device_get_softc (int ) ;
 int device_quiet (int ) ;
 int device_set_desc (int ,int *) ;
 struct gpio_match* gpio_controls ;
 struct aoagpio_softc** gpio_ctrls ;
 char* ofw_bus_get_name (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static int
aoagpio_probe(device_t gpio)
{
 phandle_t node;
 char bname[32];
 const char *name;
 struct gpio_match *m;
 struct aoagpio_softc *sc;

 node = ofw_bus_get_node(gpio);
 if (node == 0 || node == -1)
  return (EINVAL);

 bzero(bname, sizeof(bname));
 if (OF_getprop(node, "audio-gpio", bname, sizeof(bname)) > 2)
  name = bname;
 else
  name = ofw_bus_get_name(gpio);


 for (m = gpio_controls; m->name != ((void*)0); m++) {
  if (strcmp(name, m->name) == 0) {
   sc = device_get_softc(gpio);
   gpio_ctrls[m->ctrl] = sc;
   sc->dev = gpio;
   sc->ctrl = m->ctrl;
   sc->level = 0;
   sc->detect_active = 0;
   sc->i2s = ((void*)0);

   OF_getprop(node, "audio-gpio-active-state",
    &sc->detect_active, sizeof(sc->detect_active));

   if ((1 << m->ctrl) & GPIO_CTRL_EXTINT_SET)
    aoagpio_int(gpio);

   device_set_desc(gpio, m->name);
   device_quiet(gpio);
   return (0);
  }
 }

 return (ENXIO);
}
