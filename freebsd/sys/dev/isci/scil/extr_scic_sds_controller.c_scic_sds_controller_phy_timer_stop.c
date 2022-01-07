
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phy_startup_timer_pending; int phy_startup_timer; } ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int FALSE ;
 int scic_cb_timer_stop (TYPE_1__*,int ) ;

void scic_sds_controller_phy_timer_stop(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   scic_cb_timer_stop(
      this_controller,
      this_controller->phy_startup_timer
   );

   this_controller->phy_startup_timer_pending = FALSE;
}
