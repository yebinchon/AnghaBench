
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int pcie_port; } ;


 int LIO_CN23XX_PEM_BAR1_INDEX_REG (int ,int ) ;
 scalar_t__ lio_pci_readq (struct octeon_device*,int ) ;

__attribute__((used)) static uint32_t
lio_cn23xx_pf_bar1_idx_read(struct octeon_device *oct, uint32_t idx)
{

 return ((uint32_t)lio_pci_readq(oct,
    LIO_CN23XX_PEM_BAR1_INDEX_REG(oct->pcie_port,
             idx)));
}
