
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ar531x_device_reset () ;

void
platform_reset(void)
{
 ar531x_device_reset();

 while(1)
  ;
}
