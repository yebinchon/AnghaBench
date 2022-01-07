
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIC_SDS_CONTROLLER_T ;


 int scic_sds_controller_power_control_timer_start (int *) ;
 int scic_sds_controller_power_control_timer_stop (int *) ;

__attribute__((used)) static
void scic_sds_controller_power_control_timer_restart(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   scic_sds_controller_power_control_timer_stop(this_controller);
   scic_sds_controller_power_control_timer_start(this_controller);
}
