
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sec; } ;
struct pcib_softc {int child; TYPE_1__ bus; } ;
typedef int device_t ;


 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 struct pcib_softc* device_get_softc (int ) ;
 int pcib_present (struct pcib_softc*) ;

int
pcib_attach_child(device_t dev)
{
 struct pcib_softc *sc;

 sc = device_get_softc(dev);
 if (sc->bus.sec == 0) {

  return(0);
 }
 sc->child = device_add_child(dev, "pci", -1);
 return (bus_generic_attach(dev));
}
