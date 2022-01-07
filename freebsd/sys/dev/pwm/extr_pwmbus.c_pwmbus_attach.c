
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct pwmbus_softc {scalar_t__ nchannels; int * dev; } ;
struct pwmbus_ivars {scalar_t__ pi_channel; } ;
typedef int * device_t ;


 int ENXIO ;
 scalar_t__ PWMBUS_CHANNEL_COUNT (int *,scalar_t__*) ;
 int bus_enumerate_hinted_children (int *) ;
 int bus_generic_attach (int *) ;
 int bus_generic_probe (int *) ;
 struct pwmbus_ivars* device_get_ivars (int *) ;
 scalar_t__ device_get_nameunit (int *) ;
 int * device_get_parent (int *) ;
 struct pwmbus_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,scalar_t__) ;
 int * pwmbus_add_child (int *,int ,char*,int) ;

__attribute__((used)) static int
pwmbus_attach(device_t dev)
{
 struct pwmbus_softc *sc;
 struct pwmbus_ivars *ivars;
 device_t child, parent;
 u_int chan;

 sc = device_get_softc(dev);
 sc->dev = dev;
 parent = device_get_parent(dev);

 if (PWMBUS_CHANNEL_COUNT(parent, &sc->nchannels) != 0 ||
     sc->nchannels == 0) {
  device_printf(sc->dev, "No channels on parent %s\n",
      device_get_nameunit(parent));
  return (ENXIO);
 }


 for (chan = 0; chan < sc->nchannels; ++chan) {
  if ((child = pwmbus_add_child(sc->dev, 0, "pwmc", -1)) == ((void*)0)) {
   device_printf(dev, "failed to add pwmc child device "
       "for channel %u\n", chan);
   continue;
  }
  ivars = device_get_ivars(child);
  ivars->pi_channel = chan;
 }

 bus_enumerate_hinted_children(dev);
 bus_generic_probe(dev);

 return (bus_generic_attach(dev));
}
