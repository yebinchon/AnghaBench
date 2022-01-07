
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pci_win_rd_data; int pci_win_wr_data; int pci_win_wr_data_lo; int pci_win_wr_data_hi; void* pci_win_rd_addr; void* pci_win_rd_addr_lo; int pci_win_rd_addr_hi; int pci_win_wr_addr; } ;
struct octeon_device {int pf_num; int pcie_port; int msix_on; TYPE_1__ reg_list; scalar_t__ chip; } ;
struct lio_cn23xx_pf {int intr_enb_reg64; int intr_sum_reg64; int intr_mask64; } ;


 int LIO_CN23XX_INTR_MASK ;
 int LIO_CN23XX_INTR_PKT_TIME ;
 int LIO_CN23XX_SLI_MAC_PF_INT_ENB64 (int ,int ) ;
 int LIO_CN23XX_SLI_MAC_PF_INT_SUM64 (int ,int ) ;
 void* LIO_CN23XX_SLI_WIN_RD_ADDR64 ;
 int LIO_CN23XX_SLI_WIN_RD_ADDR_HI ;
 int LIO_CN23XX_SLI_WIN_RD_DATA64 ;
 int LIO_CN23XX_SLI_WIN_WR_ADDR64 ;
 int LIO_CN23XX_SLI_WIN_WR_DATA64 ;
 int LIO_CN23XX_SLI_WIN_WR_DATA_HI ;
 int LIO_CN23XX_SLI_WIN_WR_DATA_LO ;
 int lio_cn23xx_pf_get_pcie_qlmport (struct octeon_device*) ;

__attribute__((used)) static void
lio_cn23xx_pf_setup_reg_address(struct octeon_device *oct)
{
 struct lio_cn23xx_pf *cn23xx = (struct lio_cn23xx_pf *)oct->chip;

 oct->reg_list.pci_win_wr_addr = LIO_CN23XX_SLI_WIN_WR_ADDR64;

 oct->reg_list.pci_win_rd_addr_hi = LIO_CN23XX_SLI_WIN_RD_ADDR_HI;
 oct->reg_list.pci_win_rd_addr_lo = LIO_CN23XX_SLI_WIN_RD_ADDR64;
 oct->reg_list.pci_win_rd_addr = LIO_CN23XX_SLI_WIN_RD_ADDR64;

 oct->reg_list.pci_win_wr_data_hi = LIO_CN23XX_SLI_WIN_WR_DATA_HI;
 oct->reg_list.pci_win_wr_data_lo = LIO_CN23XX_SLI_WIN_WR_DATA_LO;
 oct->reg_list.pci_win_wr_data = LIO_CN23XX_SLI_WIN_WR_DATA64;

 oct->reg_list.pci_win_rd_data = LIO_CN23XX_SLI_WIN_RD_DATA64;

 lio_cn23xx_pf_get_pcie_qlmport(oct);

 cn23xx->intr_mask64 = LIO_CN23XX_INTR_MASK;
 if (!oct->msix_on)
  cn23xx->intr_mask64 |= LIO_CN23XX_INTR_PKT_TIME;

 cn23xx->intr_sum_reg64 =
     LIO_CN23XX_SLI_MAC_PF_INT_SUM64(oct->pcie_port, oct->pf_num);
 cn23xx->intr_enb_reg64 =
     LIO_CN23XX_SLI_MAC_PF_INT_ENB64(oct->pcie_port, oct->pf_num);
}
