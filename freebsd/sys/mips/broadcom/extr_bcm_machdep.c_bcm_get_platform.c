
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_platform {int dummy; } ;


 struct bcm_platform bcm_platform_data ;
 int bcm_platform_data_avail ;
 int panic (char*) ;

struct bcm_platform *
bcm_get_platform(void)
{
 if (!bcm_platform_data_avail)
  panic("platform data not available");

 return (&bcm_platform_data);
}
