
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;


 scalar_t__ SCIC_SDS_CONTROLLER_MIN_TIMER_COUNT ;
 scalar_t__ scic_sds_phy_get_min_timer_count () ;
 scalar_t__ scic_sds_port_get_min_timer_count () ;

U32 scic_sds_controller_get_min_timer_count(void)
{
   return SCIC_SDS_CONTROLLER_MIN_TIMER_COUNT
          + scic_sds_port_get_min_timer_count()
          + scic_sds_phy_get_min_timer_count();
}
