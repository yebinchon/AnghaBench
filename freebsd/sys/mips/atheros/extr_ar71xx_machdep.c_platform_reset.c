
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RST_RESET_FULL_CHIP ;
 int ar71xx_device_stop (int ) ;

void
platform_reset(void)
{
 ar71xx_device_stop(RST_RESET_FULL_CHIP);

 while(1)
  ;
}
