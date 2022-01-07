
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ timer_started; int timer; } ;
struct TYPE_6__ {TYPE_1__ power_control; } ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 scalar_t__ FALSE ;
 int scic_cb_timer_stop (TYPE_2__*,int ) ;

__attribute__((used)) static
void scic_sds_controller_power_control_timer_stop(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   if (this_controller->power_control.timer_started)
   {
      scic_cb_timer_stop(
         this_controller, this_controller->power_control.timer
      );

      this_controller->power_control.timer_started = FALSE;
   }
}
