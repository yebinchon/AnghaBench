
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int SLI4_PCI_REV_ID_MASK ;
 int SLI4_PCI_REV_ID_SHIFT ;

__attribute__((used)) static uint8_t
sli_pci_rev_id(uint32_t val)
{
 return ((val >> SLI4_PCI_REV_ID_SHIFT) & SLI4_PCI_REV_ID_MASK);
}
