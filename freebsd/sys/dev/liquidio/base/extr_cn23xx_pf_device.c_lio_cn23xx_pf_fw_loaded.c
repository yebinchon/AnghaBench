
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct octeon_device {int dummy; } ;


 int LIO_CN23XX_SLI_SCRATCH2 ;
 unsigned long long SCR2_BIT_FW_LOADED ;
 unsigned long long lio_read_csr64 (struct octeon_device*,int ) ;

int
lio_cn23xx_pf_fw_loaded(struct octeon_device *oct)
{
 uint64_t val;

 val = lio_read_csr64(oct, LIO_CN23XX_SLI_SCRATCH2);
 return ((val >> SCR2_BIT_FW_LOADED) & 1ULL);
}
