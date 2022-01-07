
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phy_startup_timer_pending; int phy_startup_timer; } ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_SDS_CONTROLLER_PHY_START_TIMEOUT ;
 int TRUE ;
 int scic_cb_timer_start (TYPE_1__*,int ,int ) ;

__attribute__((used)) static
void scic_sds_controller_phy_timer_start(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   scic_cb_timer_start(
      this_controller,
      this_controller->phy_startup_timer,
      SCIC_SDS_CONTROLLER_PHY_START_TIMEOUT
   );

   this_controller->phy_startup_timer_pending = TRUE;
}
