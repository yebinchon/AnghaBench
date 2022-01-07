
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * phy_startup_timer; int timeout_timer; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int scic_cb_timer_destroy (TYPE_1__*,int *) ;
 int scic_cb_timer_stop (int *,int ) ;

__attribute__((used)) static
void scic_sds_controller_starting_state_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   scic_cb_timer_stop(object, this_controller->timeout_timer);



   scic_cb_timer_destroy(
      this_controller,
      this_controller->phy_startup_timer
   );

   this_controller->phy_startup_timer = ((void*)0);
}
