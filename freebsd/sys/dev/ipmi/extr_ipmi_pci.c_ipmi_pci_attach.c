
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct ipmi_softc {int ipmi_io_type; scalar_t__ ipmi_irq_rid; void* ipmi_irq_res; int ** ipmi_io_res; int ipmi_io_spacing; scalar_t__ ipmi_io_rid; int ipmi_dev; } ;
struct ipmi_get_info {int iface_type; int offset; scalar_t__ io_mode; scalar_t__ address; } ;
typedef int device_t ;



 int ENXIO ;

 scalar_t__ PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;

 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int,scalar_t__*,int) ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 struct ipmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ipmi_attach (int ) ;
 int ipmi_kcs_attach (struct ipmi_softc*) ;
 int ipmi_release_resources (int ) ;
 int ipmi_smbios_identify (struct ipmi_get_info*) ;
 int ipmi_smic_attach (struct ipmi_softc*) ;

__attribute__((used)) static int
ipmi_pci_attach(device_t dev)
{
 struct ipmi_softc *sc = device_get_softc(dev);
 struct ipmi_get_info info;
 const char *mode;
 int error, type;


 if (!ipmi_smbios_identify(&info))
  return (ENXIO);

 sc->ipmi_dev = dev;

 switch (info.iface_type) {
 case 129:
  mode = "KCS";
  break;
 case 128:
  mode = "SMIC";
  break;
 case 130:
  device_printf(dev, "BT mode is unsupported\n");
  return (ENXIO);
 default:
  device_printf(dev, "No IPMI interface found\n");
  return (ENXIO);
 }

 device_printf(dev, "%s mode found at %s 0x%jx alignment 0x%x on %s\n",
     mode, info.io_mode ? "io" : "mem",
     (uintmax_t)info.address, info.offset,
     device_get_name(device_get_parent(dev)));
 if (info.io_mode)
  type = SYS_RES_IOPORT;
 else
  type = SYS_RES_MEMORY;

 sc->ipmi_io_rid = PCIR_BAR(0);
 sc->ipmi_io_res[0] = bus_alloc_resource_any(dev, type,
     &sc->ipmi_io_rid, RF_ACTIVE);
 sc->ipmi_io_type = type;
 sc->ipmi_io_spacing = info.offset;

 if (sc->ipmi_io_res[0] == ((void*)0)) {
  device_printf(dev, "couldn't configure pci io res\n");
  return (ENXIO);
 }

 sc->ipmi_irq_rid = 0;
 sc->ipmi_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->ipmi_irq_rid, RF_SHAREABLE | RF_ACTIVE);

 switch (info.iface_type) {
 case 129:
  error = ipmi_kcs_attach(sc);
  if (error)
   goto bad;
  break;
 case 128:
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
