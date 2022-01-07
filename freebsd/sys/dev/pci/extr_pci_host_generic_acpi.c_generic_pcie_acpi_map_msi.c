
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int device_t ;


 int ENXIO ;
 int generic_pcie_get_xref (int ,int ) ;
 int intr_map_msi (int ,int ,int ,int,int *,int *) ;

__attribute__((used)) static int
generic_pcie_acpi_map_msi(device_t pci, device_t child, int irq, uint64_t *addr,
    uint32_t *data)
{





 return (ENXIO);

}
