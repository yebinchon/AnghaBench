
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pci_addr_t ;


 int PCIM_BIOS_ADDR_MASK ;

__attribute__((used)) static pci_addr_t
pci_rombase(uint64_t mapreg)
{

 return (mapreg & PCIM_BIOS_ADDR_MASK);
}
