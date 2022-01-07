
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
struct octeon_device {size_t octeon_id; int chip_id; } ;
struct TYPE_2__ {int conf_type; } ;



 int LIO_CN23XX_PF_VID ;
 int default_cn23xx_conf ;
 TYPE_1__* oct_conf_info ;

__attribute__((used)) static void *
__lio_retrieve_config_info(struct octeon_device *oct, uint16_t card_type)
{
 void *ret = ((void*)0);
 uint32_t oct_id = oct->octeon_id;

 switch (oct_conf_info[oct_id].conf_type) {
 case 128:
  if (oct->chip_id == LIO_CN23XX_PF_VID) {
   ret = &default_cn23xx_conf;
  }

  break;
 default:
  break;
 }
 return (ret);
}
