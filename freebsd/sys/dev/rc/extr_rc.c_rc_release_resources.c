
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_softc {int sc_irqrid; int ** sc_port; int * sc_irq; } ;
typedef int device_t ;


 int IOBASE_ADDRS ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct rc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
rc_release_resources(device_t dev)
{
 struct rc_softc *sc;
 int i;

 sc = device_get_softc(dev);
 if (sc->sc_irq != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irqrid,
      sc->sc_irq);
  sc->sc_irq = ((void*)0);
 }
 for (i = 0; i < IOBASE_ADDRS; i++) {
  if (sc->sc_port[i] == ((void*)0))
   break;
  bus_release_resource(dev, SYS_RES_IOPORT, i, sc->sc_port[i]);
  sc->sc_port[i] = ((void*)0);
 }
}
