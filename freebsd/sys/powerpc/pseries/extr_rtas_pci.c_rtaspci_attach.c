
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtaspci_softc {scalar_t__ sc_extended_config; void* ex_write_pci_config; void* ex_read_pci_config; void* write_pci_config; void* read_pci_config; int sc_pcir; } ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_getencprop (int ,char*,scalar_t__*,int) ;
 struct rtaspci_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_pci_attach (int ) ;
 void* rtas_token_lookup (char*) ;

__attribute__((used)) static int
rtaspci_attach(device_t dev)
{
 struct rtaspci_softc *sc;

 sc = device_get_softc(dev);

 if (OF_getencprop(ofw_bus_get_node(dev), "reg", (pcell_t *)&sc->sc_pcir,
     sizeof(sc->sc_pcir)) == -1)
  return (ENXIO);

 sc->read_pci_config = rtas_token_lookup("read-pci-config");
 sc->write_pci_config = rtas_token_lookup("write-pci-config");
 sc->ex_read_pci_config = rtas_token_lookup("ibm,read-pci-config");
 sc->ex_write_pci_config = rtas_token_lookup("ibm,write-pci-config");

 sc->sc_extended_config = 0;
 OF_getencprop(ofw_bus_get_node(dev), "ibm,pci-config-space-type",
     &sc->sc_extended_config, sizeof(sc->sc_extended_config));

 return (ofw_pci_attach(dev));
}
