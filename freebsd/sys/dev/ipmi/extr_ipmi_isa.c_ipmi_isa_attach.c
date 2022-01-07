
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct ipmi_softc {int ipmi_io_type; int ipmi_io_spacing; int ipmi_io_rid; int ipmi_irq_rid; void* ipmi_irq_res; int ** ipmi_io_res; int ipmi_dev; } ;
struct ipmi_get_info {int iface_type; scalar_t__ address; int offset; scalar_t__ irq; scalar_t__ io_mode; } ;
typedef int device_t ;



 int ENXIO ;

 int RF_ACTIVE ;
 int RF_SHAREABLE ;

 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource (int ,int,int*,scalar_t__,scalar_t__,int,int) ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 struct ipmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ipmi_attach (int ) ;
 int ipmi_hint_identify (int ,struct ipmi_get_info*) ;
 int ipmi_kcs_attach (struct ipmi_softc*) ;
 int ipmi_release_resources (int ) ;
 int ipmi_smbios_identify (struct ipmi_get_info*) ;
 int ipmi_smic_attach (struct ipmi_softc*) ;

__attribute__((used)) static int
ipmi_isa_attach(device_t dev)
{
 struct ipmi_softc *sc = device_get_softc(dev);
 struct ipmi_get_info info;
 const char *mode;
 int count, error, i, type;





 if (!ipmi_smbios_identify(&info) &&
     !ipmi_hint_identify(dev, &info))
  return (ENXIO);

 switch (info.iface_type) {
 case 129:
  count = 2;
  mode = "KCS";
  break;
 case 128:
  count = 3;
  mode = "SMIC";
  break;
 case 130:
  device_printf(dev, "BT mode is unsupported\n");
  return (ENXIO);
 default:
  return (ENXIO);
 }
 error = 0;
 sc->ipmi_dev = dev;

 device_printf(dev, "%s mode found at %s 0x%jx alignment 0x%x on %s\n",
     mode, info.io_mode ? "io" : "mem",
     (uintmax_t)info.address, info.offset,
     device_get_name(device_get_parent(dev)));
 if (info.io_mode)
  type = SYS_RES_IOPORT;
 else
  type = SYS_RES_MEMORY;

 sc->ipmi_io_type = type;
 sc->ipmi_io_spacing = info.offset;
 if (info.offset == 1) {
  sc->ipmi_io_rid = 0;
  sc->ipmi_io_res[0] = bus_alloc_resource(dev, type,
      &sc->ipmi_io_rid, info.address, info.address + count - 1,
      count, RF_ACTIVE);
  if (sc->ipmi_io_res[0] == ((void*)0)) {
   device_printf(dev, "couldn't configure I/O resource\n");
   return (ENXIO);
  }
 } else {
  for (i = 0; i < count; i++) {
   sc->ipmi_io_rid = i;
   sc->ipmi_io_res[i] = bus_alloc_resource(dev, type,
       &sc->ipmi_io_rid, info.address + i * info.offset,
       info.address + i * info.offset, 1, RF_ACTIVE);
   if (sc->ipmi_io_res[i] == ((void*)0)) {
    device_printf(dev,
        "couldn't configure I/O resource\n");
    error = ENXIO;
    sc->ipmi_io_rid = 0;
    goto bad;
   }
  }
  sc->ipmi_io_rid = 0;
 }

 if (info.irq != 0) {
  sc->ipmi_irq_rid = 0;
  sc->ipmi_irq_res = bus_alloc_resource(dev, SYS_RES_IRQ,
      &sc->ipmi_irq_rid, info.irq, info.irq, 1,
      RF_SHAREABLE | RF_ACTIVE);
 }

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
