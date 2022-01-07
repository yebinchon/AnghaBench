
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ remote_devices_granted_power; scalar_t__ phys_waiting; int requesters; int timer; } ;
struct TYPE_7__ {TYPE_1__ power_control; } ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 int memset (int ,int ,int) ;
 int scic_cb_timer_create (TYPE_2__*,int ,TYPE_2__*) ;
 int scic_sds_controller_power_control_timer_handler ;

void scic_sds_controller_initialize_power_control(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   this_controller->power_control.timer = scic_cb_timer_create(
      this_controller,
      scic_sds_controller_power_control_timer_handler,
      this_controller
   );

   memset(
      this_controller->power_control.requesters,
      0,
      sizeof(this_controller->power_control.requesters)
   );

   this_controller->power_control.phys_waiting = 0;
   this_controller->power_control.remote_devices_granted_power = 0;
}
