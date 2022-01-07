
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ linux_code; scalar_t__ bsd_code; } ;


 scalar_t__ GPIOKEY_NONE ;
 TYPE_1__* gpiokeys_codes_map ;

uint32_t
gpiokey_map_linux_code(uint32_t linux_code)
{
 int i;

 for (i = 0; gpiokeys_codes_map[i].linux_code != GPIOKEY_NONE; i++) {
  if (gpiokeys_codes_map[i].linux_code == linux_code)
   return (gpiokeys_codes_map[i].bsd_code);
 }

 return (GPIOKEY_NONE);
}
