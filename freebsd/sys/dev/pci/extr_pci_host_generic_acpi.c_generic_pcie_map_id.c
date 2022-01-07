
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int ecam; } ;
struct generic_pcie_acpi_softc {TYPE_1__ base; } ;
typedef int device_t ;


 int PCI_ID_RID ;
 int acpi_iort_map_pci_msi (int ,uintptr_t,int*,int*) ;
 struct generic_pcie_acpi_softc* device_get_softc (int ) ;
 int pcib_get_id (int ,int ,int ,uintptr_t*) ;

__attribute__((used)) static u_int
generic_pcie_map_id(device_t pci, device_t child, uintptr_t *id)
{
 struct generic_pcie_acpi_softc *sc;
 uintptr_t rid;
 u_int xref, devid;
 int err;

 sc = device_get_softc(pci);
 err = pcib_get_id(pci, child, PCI_ID_RID, &rid);
 if (err != 0)
  return (err);
        err = acpi_iort_map_pci_msi(sc->base.ecam, rid, &xref, &devid);
 if (err == 0)
  *id = devid;
 else
  *id = rid;
 return (0);
}
