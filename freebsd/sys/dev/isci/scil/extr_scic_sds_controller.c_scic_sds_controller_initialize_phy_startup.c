
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int phy_startup_timer_pending; scalar_t__ next_phy_to_start; int * phy_startup_timer; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int FALSE ;
 int SCI_FAILURE_INSUFFICIENT_RESOURCES ;
 int SCI_SUCCESS ;
 int * scic_cb_timer_create (TYPE_1__*,int ,TYPE_1__*) ;
 int scic_sds_controller_phy_startup_timeout_handler ;

__attribute__((used)) static
SCI_STATUS scic_sds_controller_initialize_phy_startup(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   this_controller->phy_startup_timer = scic_cb_timer_create(
      this_controller,
      scic_sds_controller_phy_startup_timeout_handler,
      this_controller
   );

   if (this_controller->phy_startup_timer == ((void*)0))
   {
      return SCI_FAILURE_INSUFFICIENT_RESOURCES;
   }
   else
   {
      this_controller->next_phy_to_start = 0;
      this_controller->phy_startup_timer_pending = FALSE;
   }

   return SCI_SUCCESS;
}
