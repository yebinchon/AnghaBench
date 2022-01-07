
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmufreq_softc {int minfreq; int maxfreq; int curfreq; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int OF_getprop (int ,char*,int*,int) ;
 int cpufreq_register (int ) ;
 int device_get_parent (int ) ;
 struct pmufreq_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
pmufreq_attach(device_t dev)
{
 struct pmufreq_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->dev = dev;

 node = ofw_bus_get_node(device_get_parent(dev));
 OF_getprop(node, "min-clock-frequency", &sc->minfreq, sizeof(sc->minfreq));
 OF_getprop(node, "max-clock-frequency", &sc->maxfreq, sizeof(sc->maxfreq));
 OF_getprop(node, "rounded-clock-frequency", &sc->curfreq, sizeof(sc->curfreq));
 sc->minfreq /= 1000000;
 sc->maxfreq /= 1000000;
 sc->curfreq /= 1000000;

 cpufreq_register(dev);
 return (0);
}
