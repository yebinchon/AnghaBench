
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;


 int LIO_CN23XX_MAX_INPUT_JABBER ;
 int LIO_CN23XX_SLI_PKT_IN_JABBER ;
 int LIO_CN23XX_SLI_WINDOW_CTL ;
 int LIO_CN23XX_SLI_WINDOW_CTL_DEFAULT ;
 int lio_cn23xx_pf_enable_error_reporting (struct octeon_device*) ;
 scalar_t__ lio_cn23xx_pf_setup_global_input_regs (struct octeon_device*) ;
 int lio_cn23xx_pf_setup_global_mac_regs (struct octeon_device*) ;
 int lio_cn23xx_pf_setup_global_output_regs (struct octeon_device*) ;
 int lio_write_csr64 (struct octeon_device*,int ,int ) ;

__attribute__((used)) static int
lio_cn23xx_pf_setup_device_regs(struct octeon_device *oct)
{

 lio_cn23xx_pf_enable_error_reporting(oct);


 lio_cn23xx_pf_setup_global_mac_regs(oct);

 if (lio_cn23xx_pf_setup_global_input_regs(oct))
  return (-1);

 lio_cn23xx_pf_setup_global_output_regs(oct);





 lio_write_csr64(oct, LIO_CN23XX_SLI_WINDOW_CTL,
   LIO_CN23XX_SLI_WINDOW_CTL_DEFAULT);


 lio_write_csr64(oct, LIO_CN23XX_SLI_PKT_IN_JABBER,
   LIO_CN23XX_MAX_INPUT_JABBER);
 return (0);
}
