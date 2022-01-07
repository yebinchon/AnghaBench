
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int dummy; } ;


 int LIO_CN23XX_RST_BOOT ;
 int lio_pci_readq (struct octeon_device*,int ) ;

__attribute__((used)) static uint32_t
lio_cn23xx_pf_coprocessor_clock(struct octeon_device *oct)
{






 return (((lio_pci_readq(oct, LIO_CN23XX_RST_BOOT) >> 24) & 0x3f) * 50);
}
