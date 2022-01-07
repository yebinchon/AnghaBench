
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int upper; int io; int did; int endian_swap; unsigned int bus; unsigned int dev; unsigned int func; unsigned int reg; int subdid; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ octeon_pci_config_space_address_t ;


 int CVMX_OCT_SUBDID_PCI_CFG ;

__attribute__((used)) static uint64_t
octopci_cs_addr(unsigned bus, unsigned slot, unsigned func, unsigned reg)
{
 octeon_pci_config_space_address_t pci_addr;

 pci_addr.u64 = 0;
 pci_addr.s.upper = 2;
 pci_addr.s.io = 1;
 pci_addr.s.did = 3;
 pci_addr.s.subdid = CVMX_OCT_SUBDID_PCI_CFG;
 pci_addr.s.endian_swap = 1;
 pci_addr.s.bus = bus;
 pci_addr.s.dev = slot;
 pci_addr.s.func = func;
 pci_addr.s.reg = reg;

 return (pci_addr.u64);
}
