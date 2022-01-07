
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {int l_res_index; } ;
struct acpi_pci_link_softc {int pl_num_links; struct link* pl_links; } ;
typedef int device_t ;


 int ACPI_SERIAL_ASSERT (int ) ;
 struct acpi_pci_link_softc* device_get_softc (int ) ;
 int pci_link ;

__attribute__((used)) static struct link *
acpi_pci_link_lookup(device_t dev, int source_index)
{
 struct acpi_pci_link_softc *sc;
 int i;

 ACPI_SERIAL_ASSERT(pci_link);
 sc = device_get_softc(dev);
 for (i = 0; i < sc->pl_num_links; i++)
  if (sc->pl_links[i].l_res_index == source_index)
   return (&sc->pl_links[i]);
 return (((void*)0));
}
