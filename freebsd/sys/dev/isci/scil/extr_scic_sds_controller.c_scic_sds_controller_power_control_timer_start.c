
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int timer_started; int timer; } ;
struct TYPE_6__ {TYPE_1__ power_control; } ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL ;
 int TRUE ;
 int scic_cb_timer_start (TYPE_2__*,int ,int ) ;

__attribute__((used)) static
void scic_sds_controller_power_control_timer_start(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   scic_cb_timer_start(
      this_controller, this_controller->power_control.timer,
      SCIC_SDS_CONTROLLER_POWER_CONTROL_INTERVAL
   );

   this_controller->power_control.timer_started = TRUE;
}
