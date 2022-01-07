
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int generic_pcie_get_xref (int ,int ) ;
 int intr_alloc_msix (int ,int ,int ,int*) ;

__attribute__((used)) static int
generic_pcie_acpi_alloc_msix(device_t pci, device_t child, int *irq)
{





 return (ENXIO);

}
