
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int mem_rman; int io_rman; TYPE_1__* ranges; scalar_t__ coherent; scalar_t__ ecam; scalar_t__ bus_start; } ;
struct generic_pcie_acpi_softc {TYPE_2__ base; int ap_prt; } ;
typedef scalar_t__ device_t ;
struct TYPE_3__ {scalar_t__ phys_base; scalar_t__ pci_base; scalar_t__ size; int flags; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiWalkResources (int ,char*,int ,void*) ;
 int ENXIO ;
 int FLAG_IO ;
 int FLAG_MEM ;
 int MAX_RANGES_TUPLES ;
 scalar_t__ PCI_IO_WINDOW_OFFSET ;
 int acpi_GetInteger (int ,char*,scalar_t__*) ;
 int acpi_get_handle (scalar_t__) ;
 int acpi_pcib_fetch_prt (scalar_t__,int *) ;
 scalar_t__ bootverbose ;
 int bus_generic_attach (scalar_t__) ;
 int device_add_child (scalar_t__,char*,int) ;
 struct generic_pcie_acpi_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*,...) ;
 int pci_host_acpi_get_ecam_resource (scalar_t__) ;
 int pci_host_generic_acpi_parse_resource ;
 int pci_host_generic_core_attach (scalar_t__) ;
 int rman_fini (int *) ;
 int rman_manage_region (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
pci_host_generic_acpi_attach(device_t dev)
{
 struct generic_pcie_acpi_softc *sc;
 ACPI_HANDLE handle;
 uint64_t phys_base;
 uint64_t pci_base;
 uint64_t size;
 ACPI_STATUS status;
 int error;
 int tuple;

 sc = device_get_softc(dev);
 handle = acpi_get_handle(dev);


 status = acpi_GetInteger(handle, "_BBN", &sc->base.bus_start);
 if (ACPI_FAILURE(status)) {
  device_printf(dev, "No _BBN, using start bus 0\n");
  sc->base.bus_start = 0;
 }


 status = acpi_GetInteger(handle, "_SEG", &sc->base.ecam);
 if (ACPI_FAILURE(status)) {
  device_printf(dev, "No _SEG for PCI Bus, using segment 0\n");
  sc->base.ecam = 0;
 }


 status = AcpiWalkResources(handle, "_CRS",
     pci_host_generic_acpi_parse_resource, (void *)dev);
 if (ACPI_FAILURE(status))
  return (ENXIO);


 if (ACPI_FAILURE(acpi_GetInteger(handle, "_CCA", &sc->base.coherent)))
  sc->base.coherent = 0;
 if (bootverbose)
  device_printf(dev, "Bus is%s cache-coherent\n",
      sc->base.coherent ? "" : " not");


 pci_host_acpi_get_ecam_resource(dev);
 acpi_pcib_fetch_prt(dev, &sc->ap_prt);

 error = pci_host_generic_core_attach(dev);
 if (error != 0)
  return (error);

 for (tuple = 0; tuple < MAX_RANGES_TUPLES; tuple++) {
  phys_base = sc->base.ranges[tuple].phys_base;
  pci_base = sc->base.ranges[tuple].pci_base;
  size = sc->base.ranges[tuple].size;
  if (phys_base == 0 || size == 0)
   continue;
  if (sc->base.ranges[tuple].flags & FLAG_MEM) {
   error = rman_manage_region(&sc->base.mem_rman,
      pci_base, pci_base + size - 1);
  } else if (sc->base.ranges[tuple].flags & FLAG_IO) {
   error = rman_manage_region(&sc->base.io_rman,
      pci_base + PCI_IO_WINDOW_OFFSET,
      pci_base + PCI_IO_WINDOW_OFFSET + size - 1);
  } else
   continue;
  if (error) {
   device_printf(dev, "rman_manage_region() failed."
      "error = %d\n", error);
   rman_fini(&sc->base.mem_rman);
   return (error);
  }
 }

 device_add_child(dev, "pci", -1);
 return (bus_generic_attach(dev));
}
