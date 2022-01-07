
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {scalar_t__* ipmi_io_res; scalar_t__ ipmi_io_rid; int ipmi_io_type; scalar_t__ ipmi_irq_res; scalar_t__ ipmi_irq_rid; scalar_t__ ipmi_irq; } ;
typedef int device_t ;


 int MAX_RES ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,scalar_t__,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 struct ipmi_softc* device_get_softc (int ) ;

void
ipmi_release_resources(device_t dev)
{
 struct ipmi_softc *sc;
 int i;

 sc = device_get_softc(dev);
 if (sc->ipmi_irq)
  bus_teardown_intr(dev, sc->ipmi_irq_res, sc->ipmi_irq);
 if (sc->ipmi_irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, sc->ipmi_irq_rid,
      sc->ipmi_irq_res);
 for (i = 0; i < MAX_RES; i++)
  if (sc->ipmi_io_res[i])
   bus_release_resource(dev, sc->ipmi_io_type,
       sc->ipmi_io_rid + i, sc->ipmi_io_res[i]);
}
