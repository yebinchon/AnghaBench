
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int OF_finddevice (char*) ;
 int OF_getencprop (int ,char*,int *,int) ;
 int OF_getproplen (int ,char*) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OF_xref_from_node (int ) ;
 int SYS_RES_IRQ ;
 int bus_set_resource (int ,int ,int,int ,int) ;
 int device_set_desc (int ,char*) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_map_intr (int ,int ,int,int *) ;
 scalar_t__ opal_check () ;

__attribute__((used)) static int
opaldev_probe(device_t dev)
{
 phandle_t iparent;
 pcell_t *irqs;
 int i, n_irqs;

 if (!ofw_bus_is_compatible(dev, "ibm,opal-v3"))
  return (ENXIO);
 if (opal_check() != 0)
  return (ENXIO);

 device_set_desc(dev, "OPAL Abstraction Firmware");


 if (OF_hasprop(ofw_bus_get_node(dev), "opal-interrupts")) {
  iparent = OF_finddevice("/interrupt-controller@0");
  iparent = OF_xref_from_node(iparent);

  n_irqs = OF_getproplen(ofw_bus_get_node(dev),
                    "opal-interrupts") / sizeof(*irqs);
  irqs = malloc(n_irqs * sizeof(*irqs), M_DEVBUF, M_WAITOK);
  OF_getencprop(ofw_bus_get_node(dev), "opal-interrupts", irqs,
      n_irqs * sizeof(*irqs));
  for (i = 0; i < n_irqs; i++)
   bus_set_resource(dev, SYS_RES_IRQ, i,
       ofw_bus_map_intr(dev, iparent, 1, &irqs[i]), 1);
  free(irqs, M_DEVBUF);
 }


 return (BUS_PROBE_SPECIFIC);
}
