
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_int ;
struct pswitch_softc {int * sc_irq; scalar_t__ sc_irqrid; int sc_ih; } ;
typedef scalar_t__ phandle_t ;
typedef int irq ;
typedef int device_t ;


 int ENXIO ;
 int INTR_TYPE_MISC ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource (int ,int ,scalar_t__*,char,char,int,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,int ,int *) ;
 struct pswitch_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ macio_get_node (int ) ;
 int pswitch_intr ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
pswitch_attach(device_t dev)
{
 struct pswitch_softc *sc;
 phandle_t node, child;
 char type[32];
 u_int irq[2];

 sc = device_get_softc(dev);
 node = macio_get_node(dev);

 for (child = OF_child(node); child != 0; child = OF_peer(child)) {
  if (OF_getprop(child, "device_type", type, 32) == -1)
   continue;

  if (strcmp(type, "programmer-switch") == 0)
   break;
 }

 if (child == 0) {
  device_printf(dev, "could not find correct node\n");
  return (ENXIO);
 }

 if (OF_getprop(child, "interrupts", irq, sizeof(irq)) == -1) {
  device_printf(dev, "could not get interrupt\n");
  return (ENXIO);
 }

 sc->sc_irqrid = 0;
 sc->sc_irq = bus_alloc_resource(dev, SYS_RES_IRQ, &sc->sc_irqrid,
     irq[0], irq[0], 1, RF_ACTIVE);
 if (sc->sc_irq == ((void*)0)) {
  device_printf(dev, "could not allocate interrupt\n");
  return (ENXIO);
 }

 if (bus_setup_intr(dev, sc->sc_irq, INTR_TYPE_MISC,
     pswitch_intr, ((void*)0), dev, &sc->sc_ih) != 0) {
  device_printf(dev, "could not setup interrupt\n");
  bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irqrid,
      sc->sc_irq);
  return (ENXIO);
 }

 return (0);
}
