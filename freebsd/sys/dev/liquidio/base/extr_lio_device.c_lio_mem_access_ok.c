
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct octeon_device {int dummy; } ;


 int LIO_CN23XX_LMC0_RESET_CTL ;
 int LIO_CN23XX_LMC0_RESET_CTL_DDR3RST_MASK ;
 scalar_t__ LIO_CN23XX_PF (struct octeon_device*) ;
 int lio_pci_readq (struct octeon_device*,int ) ;

int
lio_mem_access_ok(struct octeon_device *oct)
{
 uint64_t access_okay = 0;
 uint64_t lmc0_reset_ctl;


 if (LIO_CN23XX_PF(oct)) {
  lmc0_reset_ctl = lio_pci_readq(oct, LIO_CN23XX_LMC0_RESET_CTL);
  access_okay =
      (lmc0_reset_ctl & LIO_CN23XX_LMC0_RESET_CTL_DDR3RST_MASK);
 }

 return (access_okay ? 0 : 1);
}
