
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int pcie_port; } ;


 int LIO_CN23XX_PEM_BAR1_INDEX_REG (int ,int ) ;
 int lio_pci_writeq (struct octeon_device*,int ,int ) ;

__attribute__((used)) static void
lio_cn23xx_pf_bar1_idx_write(struct octeon_device *oct, uint32_t idx,
        uint32_t mask)
{

 lio_pci_writeq(oct, mask,
         LIO_CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port, idx));
}
