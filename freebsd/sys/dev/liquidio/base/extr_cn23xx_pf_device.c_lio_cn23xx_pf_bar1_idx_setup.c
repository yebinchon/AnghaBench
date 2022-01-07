
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct octeon_device {int pcie_port; } ;


 int LIO_CN23XX_PEM_BAR1_INDEX_REG (int ,int ) ;
 int LIO_PCI_BAR1_MASK ;
 void* lio_pci_readq (struct octeon_device*,int ) ;
 int lio_pci_writeq (struct octeon_device*,int volatile,int ) ;

__attribute__((used)) static void
lio_cn23xx_pf_bar1_idx_setup(struct octeon_device *oct, uint64_t core_addr,
        uint32_t idx, int valid)
{
 volatile uint64_t bar1;
 uint64_t reg_adr;

 if (!valid) {
  reg_adr = lio_pci_readq(oct,
    LIO_CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port,
             idx));
  bar1 = reg_adr;
  lio_pci_writeq(oct, (bar1 & 0xFFFFFFFEULL),
          LIO_CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port,
            idx));
  reg_adr = lio_pci_readq(oct,
    LIO_CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port,
             idx));
  bar1 = reg_adr;
  return;
 }




 lio_pci_writeq(oct, (((core_addr >> 22) << 4) | LIO_PCI_BAR1_MASK),
         LIO_CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port, idx));

 bar1 = lio_pci_readq(oct, LIO_CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port,
        idx));
}
