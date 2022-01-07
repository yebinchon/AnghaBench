
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct link {size_t l_irq; int l_references; int l_routed; } ;
struct acpi_pci_link_softc {int pl_num_links; struct link* pl_links; scalar_t__ pl_crs_bad; } ;
typedef int device_t ;
struct TYPE_10__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_9__ {int Type; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_RESOURCE ;
typedef TYPE_2__ ACPI_BUFFER ;


 scalar_t__ ACPI_FAILURE (int ) ;
 TYPE_1__* ACPI_NEXT_RESOURCE (TYPE_1__*) ;
 int ACPI_RESOURCE_TYPE_END_TAG ;


 int ACPI_SERIAL_ASSERT (int ) ;
 int AE_OK ;
 int AcpiFormatException (int ) ;
 int AcpiOsFree (scalar_t__) ;
 int AcpiSetCurrentResources (int ,TYPE_2__*) ;
 int MPASS (int) ;
 int PCI_INTERRUPT_VALID (size_t) ;
 int TRUE ;
 int acpi_config_intr (int ,TYPE_1__*) ;
 int acpi_get_handle (int ) ;
 int acpi_pci_link_srs_from_crs (struct acpi_pci_link_softc*,TYPE_2__*) ;
 int acpi_pci_link_srs_from_links (struct acpi_pci_link_softc*,TYPE_2__*) ;
 struct acpi_pci_link_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 int pci_link ;
 int * pci_link_interrupt_weights ;

__attribute__((used)) static ACPI_STATUS
acpi_pci_link_route_irqs(device_t dev)
{
 struct acpi_pci_link_softc *sc;
 ACPI_RESOURCE *resource, *end;
 ACPI_BUFFER srsbuf;
 ACPI_STATUS status;
 struct link *link;
 int i;

 ACPI_SERIAL_ASSERT(pci_link);
 sc = device_get_softc(dev);
 if (sc->pl_crs_bad)
  status = acpi_pci_link_srs_from_links(sc, &srsbuf);
 else
  status = acpi_pci_link_srs_from_crs(sc, &srsbuf);


 status = AcpiSetCurrentResources(acpi_get_handle(dev), &srsbuf);
 if (ACPI_FAILURE(status)) {
  device_printf(dev, "Unable to route IRQs: %s\n",
      AcpiFormatException(status));
  AcpiOsFree(srsbuf.Pointer);
  return (status);
 }





 link = sc->pl_links;
 i = 0;
 resource = (ACPI_RESOURCE *)srsbuf.Pointer;
 end = (ACPI_RESOURCE *)((char *)srsbuf.Pointer + srsbuf.Length);
 for (;;) {
  if (resource->Type == ACPI_RESOURCE_TYPE_END_TAG)
   break;
  switch (resource->Type) {
  case 128:
  case 129:
   MPASS(i < sc->pl_num_links);






   if (!link->l_routed &&
       PCI_INTERRUPT_VALID(link->l_irq)) {
    link->l_routed = TRUE;
    acpi_config_intr(dev, resource);
    pci_link_interrupt_weights[link->l_irq] +=
        link->l_references;
   }
   link++;
   i++;
   break;
  }
  resource = ACPI_NEXT_RESOURCE(resource);
  if (resource >= end)
   break;
 }
 AcpiOsFree(srsbuf.Pointer);
 return (AE_OK);
}
