
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int pf_num; } ;


 int LIO_CN23XX_PCIE_SRIOV_FDL ;
 int LIO_CN23XX_PCIE_SRIOV_FDL_BIT_POS ;
 int LIO_CN23XX_PCIE_SRIOV_FDL_MASK ;
 int lio_read_pci_cfg (struct octeon_device*,int ) ;

__attribute__((used)) static void
lio_cn23xx_pf_get_pf_num(struct octeon_device *oct)
{
 uint32_t fdl_bit;


 fdl_bit = lio_read_pci_cfg(oct, LIO_CN23XX_PCIE_SRIOV_FDL);
 oct->pf_num = ((fdl_bit >> LIO_CN23XX_PCIE_SRIOV_FDL_BIT_POS) &
         LIO_CN23XX_PCIE_SRIOV_FDL_MASK);
}
