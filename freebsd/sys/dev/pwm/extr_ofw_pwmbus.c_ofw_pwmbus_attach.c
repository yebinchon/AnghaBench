
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nchannels; int * dev; } ;
struct ofw_pwmbus_softc {TYPE_1__ base; } ;
struct TYPE_4__ {scalar_t__ pi_channel; } ;
struct ofw_pwmbus_ivars {TYPE_2__ base; int devinfo; } ;
typedef scalar_t__ phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int * device_t ;
typedef int chan ;


 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 scalar_t__ PWMBUS_CHANNEL_COUNT (int *,scalar_t__*) ;
 int bus_enumerate_hinted_children (int *) ;
 int bus_generic_attach (int *) ;
 int bus_generic_probe (int *) ;
 int device_delete_child (int *,int *) ;
 struct ofw_pwmbus_ivars* device_get_ivars (int *) ;
 scalar_t__ device_get_nameunit (int *) ;
 int * device_get_parent (int *) ;
 struct ofw_pwmbus_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,scalar_t__) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (int *,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int * ofw_pwmbus_add_child (int *,int ,char*,int) ;

__attribute__((used)) static int
ofw_pwmbus_attach(device_t dev)
{
 struct ofw_pwmbus_softc *sc;
 struct ofw_pwmbus_ivars *ivars;
 phandle_t node;
 device_t child, parent;
 pcell_t chan;
 bool any_children;

 sc = device_get_softc(dev);
 sc->base.dev = dev;
 parent = device_get_parent(dev);

 if (PWMBUS_CHANNEL_COUNT(parent, &sc->base.nchannels) != 0 ||
     sc->base.nchannels == 0) {
  device_printf(dev, "No channels on parent %s\n",
      device_get_nameunit(parent));
  return (ENXIO);
 }






 any_children = 0;
 node = ofw_bus_get_node(dev);
 for (node = OF_child(node); node != 0; node = OF_peer(node)) {




  if (OF_getencprop(node, "reg", &chan, sizeof(chan)) == -1)
   continue;
  if (chan >= sc->base.nchannels)
   continue;

  if ((child = ofw_pwmbus_add_child(dev, 0, ((void*)0), -1)) == ((void*)0))
   continue;

  ivars = device_get_ivars(child);
  ivars->base.pi_channel = chan;


  if (ofw_bus_gen_setup_devinfo(&ivars->devinfo, node) != 0) {
   device_delete_child(dev, child);
   continue;
  }
  any_children = 1;
 }
 if (!any_children) {
  for (chan = 0; chan < sc->base.nchannels; ++chan) {
   child = ofw_pwmbus_add_child(dev, 0, "pwmc", -1);
   if (child == ((void*)0)) {
    device_printf(dev, "failed to add pwmc child "
        " device for channel %u\n", chan);
    continue;
   }
   ivars = device_get_ivars(child);
   ivars->base.pi_channel = chan;
  }
 }
 bus_enumerate_hinted_children(dev);
 bus_generic_probe(dev);

 return (bus_generic_attach(dev));
}
