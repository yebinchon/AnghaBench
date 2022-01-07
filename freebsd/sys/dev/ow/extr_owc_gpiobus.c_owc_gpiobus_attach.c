
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owc_gpiobus_softc {int sc_busdev; int sc_dev; } ;
typedef int device_t ;


 int M_TEMP ;
 int OWC_GPIOBUS_LOCK_INIT (struct owc_gpiobus_softc*) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 int device_get_parent (int ) ;
 struct owc_gpiobus_softc* device_get_softc (int ) ;
 int free (int *,int ) ;

__attribute__((used)) static int
owc_gpiobus_attach(device_t dev)
{
 struct owc_gpiobus_softc *sc;
 device_t *kids;
 int nkid;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_busdev = device_get_parent(dev);
 OWC_GPIOBUS_LOCK_INIT(sc);
 nkid = 0;
 if (device_get_children(dev, &kids, &nkid) == 0)
  free(kids, M_TEMP);
 if (nkid == 0)
  device_add_child(dev, "ow", -1);
 bus_generic_attach(dev);

 return (0);
}
