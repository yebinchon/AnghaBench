
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_io_type; int ipmi_io_spacing; scalar_t__ ipmi_irq_rid; void* ipmi_irq_res; int ** ipmi_io_res; scalar_t__ ipmi_io_rid; int ipmi_dev; } ;
typedef int device_t ;


 int BT_MODE ;
 int ENXIO ;




 scalar_t__ PCIR_BAR (int ) ;
 scalar_t__ PCI_BAR_IO (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;

 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int,scalar_t__*,int) ;
 struct ipmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ipmi_attach (int ) ;
 int ipmi_kcs_attach (struct ipmi_softc*) ;
 int ipmi_kcs_probe_align (struct ipmi_softc*) ;
 int ipmi_release_resources (int ) ;
 int ipmi_smic_attach (struct ipmi_softc*) ;
 int pci_get_progif (int ) ;
 int pci_read_config (int ,scalar_t__,int) ;

__attribute__((used)) static int
ipmi2_pci_attach(device_t dev)
{
 struct ipmi_softc *sc;
 int error, iface, type;

 sc = device_get_softc(dev);
 sc->ipmi_dev = dev;


 switch (pci_get_progif(dev)) {
 case 129:
  iface = 128;
  break;
 case 130:
  iface = 132;
  break;
 case 131:
  iface = BT_MODE;
  device_printf(dev, "BT interface unsupported\n");
  return (ENXIO);
 default:
  device_printf(dev, "Unsupported interface: %d\n",
      pci_get_progif(dev));
  return (ENXIO);
 }


 sc->ipmi_io_rid = PCIR_BAR(0);
 if (PCI_BAR_IO(pci_read_config(dev, PCIR_BAR(0), 4)))
  type = SYS_RES_IOPORT;
 else
  type = SYS_RES_MEMORY;
 sc->ipmi_io_type = type;
 sc->ipmi_io_spacing = 1;
 sc->ipmi_io_res[0] = bus_alloc_resource_any(dev, type,
     &sc->ipmi_io_rid, RF_ACTIVE);
 if (sc->ipmi_io_res[0] == ((void*)0)) {
  device_printf(dev, "couldn't map ports/memory\n");
  return (ENXIO);
 }

 sc->ipmi_irq_rid = 0;
 sc->ipmi_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->ipmi_irq_rid, RF_SHAREABLE | RF_ACTIVE);

 switch (iface) {
 case 132:
  device_printf(dev, "using KSC interface\n");





  if (!ipmi_kcs_probe_align(sc)) {
   device_printf(dev, "Unable to determine alignment\n");
   error = ENXIO;
   goto bad;
  }

  error = ipmi_kcs_attach(sc);
  if (error)
   goto bad;
  break;
 case 128:
  device_printf(dev, "using SMIC interface\n");

  error = ipmi_smic_attach(sc);
  if (error)
   goto bad;
  break;
 }
 error = ipmi_attach(dev);
 if (error)
  goto bad;

 return (0);
bad:
 ipmi_release_resources(dev);
 return (error);
}
