
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct octeon_device {scalar_t__ chip; } ;
struct lio_cn23xx_pf {int intr_enb_reg64; } ;


 int LIO_CN23XX_INTR_PKT_DATA ;
 int OCTEON_ALL_INTR ;
 int OCTEON_OUTPUT_INTR ;
 int lio_read_csr64 (struct octeon_device*,int ) ;
 int lio_write_csr64 (struct octeon_device*,int ,int ) ;

__attribute__((used)) static void
lio_cn23xx_pf_disable_interrupt(struct octeon_device *oct, uint8_t intr_flag)
{
 struct lio_cn23xx_pf *cn23xx = (struct lio_cn23xx_pf *)oct->chip;
 uint64_t intr_val = 0;


 if (intr_flag == OCTEON_ALL_INTR) {
  lio_write_csr64(oct, cn23xx->intr_enb_reg64, 0);
 } else if (intr_flag & OCTEON_OUTPUT_INTR) {
  intr_val = lio_read_csr64(oct, cn23xx->intr_enb_reg64);
  intr_val &= ~LIO_CN23XX_INTR_PKT_DATA;
  lio_write_csr64(oct, cn23xx->intr_enb_reg64, intr_val);
 }
}
