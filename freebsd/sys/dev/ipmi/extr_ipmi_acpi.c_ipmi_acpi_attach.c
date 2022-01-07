
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct ipmi_softc {int ipmi_io_rid; int ipmi_io_type; int ipmi_io_spacing; int ipmi_irq_rid; void* ipmi_irq_res; int ipmi_dev; int ** ipmi_io_res; } ;
struct ipmi_get_info {int address; } ;
typedef int device_t ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AcpiEvaluateObject (int ,char*,int *,int *) ;

 int ENXIO ;

 int MAX_RES ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;


 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int acpi_GetInteger (int ,char*,int*) ;
 int acpi_get_handle (int ) ;
 void* bus_alloc_resource_any (int ,int,int*,int) ;
 scalar_t__ bus_get_resource (int ,int,int ,int *,int *) ;
 int device_get_name (int ) ;
 int device_get_parent (int ) ;
 struct ipmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ipmi_attach (int ) ;
 int ipmi_kcs_attach (struct ipmi_softc*) ;
 int ipmi_release_resources (int ) ;
 int ipmi_smic_attach (struct ipmi_softc*) ;
 scalar_t__ rman_get_start (int *) ;

__attribute__((used)) static int
ipmi_acpi_attach(device_t dev)
{
 ACPI_HANDLE devh;
 const char *mode;
 struct ipmi_get_info info;
 struct ipmi_softc *sc = device_get_softc(dev);
 int count, error, flags, i, type;
 int interface_type = 0, interface_version = 0;

 error = 0;
 devh = acpi_get_handle(dev);
 if (ACPI_FAILURE(acpi_GetInteger(devh, "_IFT", &interface_type)))
  return (ENXIO);

 if (ACPI_FAILURE(acpi_GetInteger(devh, "_SRV", &interface_version)))
  return (ENXIO);

 switch (interface_type) {
 case 130:
  count = 2;
  mode = "KCS";
  break;
 case 129:
  count = 3;
  mode = "SMIC";
  break;
 case 131:
  device_printf(dev, "BT interface not supported\n");
  return (ENXIO);
 case 128:
  if (ACPI_FAILURE(acpi_GetInteger(devh, "_ADR", &flags)))
   return (ENXIO);
  info.address = flags;
  device_printf(dev, "SSIF interface not supported on ACPI\n");
  return (0);
 default:
  return (ENXIO);
 }

 if (bus_get_resource(dev, SYS_RES_IOPORT, 0, ((void*)0), ((void*)0)) == 0)
  type = SYS_RES_IOPORT;
 else if (bus_get_resource(dev, SYS_RES_MEMORY, 0, ((void*)0), ((void*)0)) == 0)
  type = SYS_RES_MEMORY;
 else {
  device_printf(dev, "unknown resource type\n");
  return (ENXIO);
 }

 sc->ipmi_io_rid = 0;
 sc->ipmi_io_res[0] = bus_alloc_resource_any(dev, type,
     &sc->ipmi_io_rid, RF_ACTIVE);
 sc->ipmi_io_type = type;
 sc->ipmi_io_spacing = 1;
 if (sc->ipmi_io_res[0] == ((void*)0)) {
  device_printf(dev, "couldn't configure I/O resource\n");
  return (ENXIO);
 }


 for (i = 1; i < MAX_RES; i++) {
  sc->ipmi_io_rid = i;
  sc->ipmi_io_res[i] = bus_alloc_resource_any(dev, type,
      &sc->ipmi_io_rid, RF_ACTIVE);
  if (sc->ipmi_io_res[i] == ((void*)0))
   break;
 }
 sc->ipmi_io_rid = 0;


 if (sc->ipmi_io_res[1] != ((void*)0) && sc->ipmi_io_res[count - 1] == ((void*)0)) {
  device_printf(dev, "too few I/O resources\n");
  error = ENXIO;
  goto bad;
 }

 device_printf(dev, "%s mode found at %s 0x%jx on %s\n",
     mode, type == SYS_RES_IOPORT ? "io" : "mem",
     (uintmax_t)rman_get_start(sc->ipmi_io_res[0]),
     device_get_name(device_get_parent(dev)));

 sc->ipmi_dev = dev;





 sc->ipmi_irq_rid = 0;
 sc->ipmi_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->ipmi_irq_rid, RF_SHAREABLE | RF_ACTIVE);


 if (ACPI_SUCCESS(AcpiEvaluateObject(devh, "_GPE", ((void*)0), ((void*)0))))
  device_printf(dev, "_GPE support not implemented\n");





 switch (interface_type) {
 case 130:
  error = ipmi_kcs_attach(sc);
  if (error)
   goto bad;
  break;
 case 129:
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
