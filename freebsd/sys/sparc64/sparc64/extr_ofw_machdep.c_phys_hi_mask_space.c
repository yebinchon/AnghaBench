
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int OFW_PCI_PHYS_HI_SPACEMASK ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static __inline uint32_t
phys_hi_mask_space(const char *bus, uint32_t phys_hi)
{

 if (strcmp(bus, "ebus") == 0 || strcmp(bus, "isa") == 0)
  phys_hi &= 0x1;
 else if (strcmp(bus, "pci") == 0)
  phys_hi &= OFW_PCI_PHYS_HI_SPACEMASK;

 return (phys_hi);
}
