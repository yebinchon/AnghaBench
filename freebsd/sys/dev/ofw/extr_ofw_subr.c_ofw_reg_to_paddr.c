
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int cell ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int EINVAL ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int OFW_PADDR_NOT_PCI ;
 int OFW_PCI_PHYS_HI_SPACEMASK ;
 int OF_getencprop (scalar_t__,char*,int*,int) ;
 scalar_t__ OF_parent (scalar_t__) ;
 int get_addr_props (scalar_t__,int*,int*,int*) ;

int
ofw_reg_to_paddr(phandle_t dev, int regno, bus_addr_t *paddr,
    bus_size_t *psize, pcell_t *ppci_hi)
{
 static pcell_t cell[256];
 pcell_t pci_hi;
 uint64_t addr, raddr, baddr;
 uint64_t size, rsize;
 uint32_t c, nbridge, naddr, nsize;
 phandle_t bridge, parent;
 u_int spc, rspc;
 int pci, pcib, res;


 if (dev == 0)
  return (EINVAL);
 bridge = OF_parent(dev);
 if (bridge == 0)
  return (EINVAL);
 if (regno < 0)
  return (EINVAL);
 if (paddr == ((void*)0) || psize == ((void*)0))
  return (EINVAL);

 get_addr_props(bridge, &naddr, &nsize, &pci);
 res = OF_getencprop(dev, (pci) ? "assigned-addresses" : "reg",
     cell, sizeof(cell));
 if (res == -1)
  return (ENXIO);
 if (res % sizeof(cell[0]))
  return (ENXIO);
 res /= sizeof(cell[0]);
 regno *= naddr + nsize;
 if (regno + naddr + nsize > res)
  return (EINVAL);
 pci_hi = pci ? cell[regno] : OFW_PADDR_NOT_PCI;
 spc = pci_hi & OFW_PCI_PHYS_HI_SPACEMASK;
 addr = 0;
 for (c = 0; c < naddr; c++)
  addr = ((uint64_t)addr << 32) | cell[regno++];
 size = 0;
 for (c = 0; c < nsize; c++)
  size = ((uint64_t)size << 32) | cell[regno++];
 parent = OF_parent(bridge);
 while (parent != 0) {
  get_addr_props(parent, &nbridge, ((void*)0), &pcib);
  res = OF_getencprop(bridge, "ranges", cell, sizeof(cell));
  if (res < 1)
   goto next;
  if (res % sizeof(cell[0]))
   return (ENXIO);

  if (pcib && pci_hi == OFW_PADDR_NOT_PCI) {
   pci_hi = cell[0];
   spc = pci_hi & OFW_PCI_PHYS_HI_SPACEMASK;
  }
  res /= sizeof(cell[0]);
  regno = 0;
  while (regno < res) {
   rspc = (pci ? cell[regno] : OFW_PADDR_NOT_PCI) &
       OFW_PCI_PHYS_HI_SPACEMASK;
   if (rspc != spc) {
    regno += naddr + nbridge + nsize;
    continue;
   }
   raddr = 0;
   for (c = 0; c < naddr; c++)
    raddr = ((uint64_t)raddr << 32) | cell[regno++];
   rspc = (pcib)
       ? cell[regno] & OFW_PCI_PHYS_HI_SPACEMASK
       : OFW_PADDR_NOT_PCI;
   baddr = 0;
   for (c = 0; c < nbridge; c++)
    baddr = ((uint64_t)baddr << 32) | cell[regno++];
   rsize = 0;
   for (c = 0; c < nsize; c++)
    rsize = ((uint64_t)rsize << 32) | cell[regno++];
   if (addr < raddr || addr >= raddr + rsize)
    continue;
   addr = addr - raddr + baddr;
   if (rspc != OFW_PADDR_NOT_PCI)
    spc = rspc;
  }
 next:
  bridge = parent;
  parent = OF_parent(bridge);
  get_addr_props(bridge, &naddr, &nsize, &pci);
 }

 KASSERT(addr <= BUS_SPACE_MAXADDR,
     ("Bus address is too large: %jx", (uintmax_t)addr));
 KASSERT(size <= BUS_SPACE_MAXSIZE,
     ("Bus size is too large: %jx", (uintmax_t)size));

 *paddr = addr;
 *psize = size;
 if (ppci_hi != ((void*)0))
  *ppci_hi = pci_hi;

 return (0);
}
