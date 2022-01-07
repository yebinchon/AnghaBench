
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {TYPE_1__* mem_bus_space; int device; } ;
struct TYPE_2__ {int * pci_mem; } ;


 int PCIR_BAR (int) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int lio_dev_dbg (struct octeon_device*,char*,int) ;

__attribute__((used)) static inline void
lio_unmap_pci_barx(struct octeon_device *oct, int baridx)
{

 lio_dev_dbg(oct, "Freeing PCI mapped regions for Bar%d\n", baridx);

 if (oct->mem_bus_space[baridx].pci_mem != ((void*)0)) {
  bus_release_resource(oct->device, SYS_RES_MEMORY,
         PCIR_BAR(baridx * 2),
         oct->mem_bus_space[baridx].pci_mem);
  oct->mem_bus_space[baridx].pci_mem = ((void*)0);
 }
}
