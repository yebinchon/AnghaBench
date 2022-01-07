
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U16 ;


 scalar_t__ scic_sds_controller_get_max_timer_count () ;
 scalar_t__ scic_sds_remote_device_get_max_timer_count () ;
 scalar_t__ scic_sds_request_get_max_timer_count () ;

U16 scic_library_get_max_timer_count(void)
{
   return (U16) (scic_sds_controller_get_max_timer_count()
               + scic_sds_remote_device_get_max_timer_count()
               + scic_sds_request_get_max_timer_count());
}
