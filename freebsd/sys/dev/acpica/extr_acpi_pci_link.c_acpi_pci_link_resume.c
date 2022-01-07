
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_pci_link_softc {int pl_num_links; TYPE_1__* pl_links; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ l_routed; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int AE_OK ;
 int AcpiEvaluateObject (int ,char*,int *,int *) ;
 int ENXIO ;
 int acpi_get_handle (int ) ;
 int acpi_pci_link_route_irqs (int ) ;
 struct acpi_pci_link_softc* device_get_softc (int ) ;
 int pci_link ;

__attribute__((used)) static int
acpi_pci_link_resume(device_t dev)
{
 struct acpi_pci_link_softc *sc;
 ACPI_STATUS status;
 int i, routed;





 ACPI_SERIAL_BEGIN(pci_link);
 sc = device_get_softc(dev);
 routed = 0;
 for (i = 0; i < sc->pl_num_links; i++)
  if (sc->pl_links[i].l_routed)
   routed++;
 if (routed == sc->pl_num_links)
  status = acpi_pci_link_route_irqs(dev);
 else {
  AcpiEvaluateObject(acpi_get_handle(dev), "_DIS", ((void*)0), ((void*)0));
  status = AE_OK;
 }
 ACPI_SERIAL_END(pci_link);
 if (ACPI_FAILURE(status))
  return (ENXIO);
 else
  return (0);
}
