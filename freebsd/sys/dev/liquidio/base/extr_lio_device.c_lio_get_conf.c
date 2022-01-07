
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int dummy; } ;
struct lio_config {int dummy; } ;


 scalar_t__ LIO_CHIP_CONF (struct octeon_device*,int ) ;
 scalar_t__ LIO_CN23XX_PF (struct octeon_device*) ;
 int cn23xx_pf ;

struct lio_config *
lio_get_conf(struct octeon_device *oct)
{
 struct lio_config *default_oct_conf = ((void*)0);





 if (LIO_CN23XX_PF(oct)) {
  default_oct_conf = (struct lio_config *)(
            LIO_CHIP_CONF(oct, cn23xx_pf));
 }

 return (default_oct_conf);
}
