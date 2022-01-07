
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {TYPE_1__* mem_bus_space; int device; } ;
struct TYPE_2__ {int handle; int tag; int * pci_mem; } ;


 int ENXIO ;
 int LIO_CAST64 (int ) ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int lio_dev_dbg (struct octeon_device*,char*,int,int ,int ) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static inline int
lio_map_pci_barx(struct octeon_device *oct, int baridx)
{
 int rid = PCIR_BAR(baridx * 2);

 oct->mem_bus_space[baridx].pci_mem =
  bus_alloc_resource_any(oct->device, SYS_RES_MEMORY, &rid,
           RF_ACTIVE);

 if (oct->mem_bus_space[baridx].pci_mem == ((void*)0)) {
  lio_dev_err(oct, "Unable to allocate bus resource: memory\n");
  return (ENXIO);
 }


 oct->mem_bus_space[baridx].tag =
  rman_get_bustag(oct->mem_bus_space[baridx].pci_mem);
 oct->mem_bus_space[baridx].handle =
  rman_get_bushandle(oct->mem_bus_space[baridx].pci_mem);

 lio_dev_dbg(oct, "BAR%d Tag 0x%llx Handle 0x%llx\n",
      baridx, LIO_CAST64(oct->mem_bus_space[baridx].tag),
      LIO_CAST64(oct->mem_bus_space[baridx].handle));

 return (0);
}
