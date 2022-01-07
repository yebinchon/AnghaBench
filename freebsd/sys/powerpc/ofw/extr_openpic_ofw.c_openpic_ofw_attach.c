
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xref ;
struct openpic_softc {int sc_quirks; } ;
typedef int phandle_t ;
typedef int device_t ;


 int OF_getencprop (int ,char*,int *,int) ;
 int OPENPIC_QUIRK_HIDDEN_IRQS ;
 int OPENPIC_QUIRK_SINGLE_BIND ;
 struct openpic_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int openpic_common_attach (int ,int ) ;

__attribute__((used)) static int
openpic_ofw_attach(device_t dev)
{
 struct openpic_softc *sc;
 phandle_t xref, node;

 node = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);

 if (OF_getencprop(node, "phandle", &xref, sizeof(xref)) == -1 &&
     OF_getencprop(node, "ibm,phandle", &xref, sizeof(xref)) == -1 &&
     OF_getencprop(node, "linux,phandle", &xref, sizeof(xref)) == -1)
  xref = node;

 if (ofw_bus_is_compatible(dev, "fsl,mpic")) {
  sc->sc_quirks = OPENPIC_QUIRK_SINGLE_BIND;
  sc->sc_quirks |= OPENPIC_QUIRK_HIDDEN_IRQS;
 }

 return (openpic_common_attach(dev, xref));
}
