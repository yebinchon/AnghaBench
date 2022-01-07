
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pf_head; } ;
struct pccard_softc {TYPE_1__ card; scalar_t__ sc_enabled_count; int dev; } ;
typedef int device_t ;


 struct pccard_softc* PCCARD_SOFTC (int ) ;
 int STAILQ_INIT (int *) ;
 int bus_generic_attach (int ) ;
 int pccard_device_create (struct pccard_softc*) ;

__attribute__((used)) static int
pccard_attach(device_t dev)
{
 struct pccard_softc *sc = PCCARD_SOFTC(dev);
 int err;

 sc->dev = dev;
 sc->sc_enabled_count = 0;
 if ((err = pccard_device_create(sc)) != 0)
  return (err);
 STAILQ_INIT(&sc->card.pf_head);
 return (bus_generic_attach(dev));
}
