
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct octeon_device {int dummy; } ;


 void* __lio_retrieve_config_info (struct octeon_device*,int ) ;

void *
lio_get_config_info(struct octeon_device *oct, uint16_t card_type)
{
 void *conf = ((void*)0);

 conf = __lio_retrieve_config_info(oct, card_type);
 if (conf == ((void*)0))
  return (((void*)0));

 return (conf);
}
