
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int intr_map_msi (int ,int ,int ,int,int *,int *) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_msimap (int ,int ,int *,int *) ;
 int pci_get_rid (int ) ;

__attribute__((used)) static int
generic_pcie_fdt_map_msi(device_t pci, device_t child, int irq, uint64_t *addr,
    uint32_t *data)
{
 return (ENXIO);

}
