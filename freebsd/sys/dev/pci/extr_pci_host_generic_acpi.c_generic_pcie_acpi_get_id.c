
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pci_id_type { ____Placeholder_pci_id_type } pci_id_type ;
typedef int device_t ;


 int PCI_ID_MSI ;
 int generic_pcie_map_id (int ,int ,uintptr_t*) ;
 int pcib_get_id (int ,int ,int,uintptr_t*) ;

__attribute__((used)) static int
generic_pcie_acpi_get_id(device_t pci, device_t child, enum pci_id_type type,
    uintptr_t *id)
{

 if (type == PCI_ID_MSI)
  return (generic_pcie_map_id(pci, child, id));
 else
  return (pcib_get_id(pci, child, type, id));
}
