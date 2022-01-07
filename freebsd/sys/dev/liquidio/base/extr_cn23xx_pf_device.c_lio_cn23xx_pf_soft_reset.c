
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;


 int LIO_CN23XX_RST_SOFT_RST ;
 int LIO_CN23XX_SLI_SCRATCH1 ;
 int LIO_CN23XX_SLI_WIN_WR_MASK_REG ;
 int lio_dev_dbg (struct octeon_device*,char*) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_mdelay (int) ;
 int lio_pci_readq (struct octeon_device*,int ) ;
 int lio_pci_writeq (struct octeon_device*,int,int ) ;
 scalar_t__ lio_read_csr64 (struct octeon_device*,int ) ;
 int lio_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static int
lio_cn23xx_pf_soft_reset(struct octeon_device *oct)
{

 lio_write_csr64(oct, LIO_CN23XX_SLI_WIN_WR_MASK_REG, 0xFF);

 lio_dev_dbg(oct, "BIST enabled for CN23XX soft reset\n");

 lio_write_csr64(oct, LIO_CN23XX_SLI_SCRATCH1, 0x1234ULL);


 lio_pci_readq(oct, LIO_CN23XX_RST_SOFT_RST);
 lio_pci_writeq(oct, 1, LIO_CN23XX_RST_SOFT_RST);


 lio_mdelay(100);

 if (lio_read_csr64(oct, LIO_CN23XX_SLI_SCRATCH1)) {
  lio_dev_err(oct, "Soft reset failed\n");
  return (1);
 }

 lio_dev_dbg(oct, "Reset completed\n");


 lio_write_csr64(oct, LIO_CN23XX_SLI_WIN_WR_MASK_REG, 0xFF);

 return (0);
}
