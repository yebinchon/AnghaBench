
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* state_handlers; } ;
struct TYPE_11__ {int phy_index; } ;
struct TYPE_10__ {int (* link_down_handler ) (TYPE_3__*,int *,TYPE_2__*) ;} ;
typedef int SCIC_SDS_PORT_T ;
typedef TYPE_2__ SCIC_SDS_PHY_T ;
typedef TYPE_3__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_INFO (int ) ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_get_state (int ) ;
 int scic_sds_controller_get_base_state_machine (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int *,TYPE_2__*) ;

void scic_sds_controller_link_down(
   SCIC_SDS_CONTROLLER_T *this_controller,
   SCIC_SDS_PORT_T *the_port,
   SCIC_SDS_PHY_T *the_phy
)
{
   if (this_controller->state_handlers->link_down_handler != ((void*)0))
   {
      this_controller->state_handlers->link_down_handler(
         this_controller, the_port, the_phy);
   }
   else
   {
      SCIC_LOG_INFO((
         sci_base_object_get_logger(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller linkdown event from phy %d in unexpected state %d\n",
         the_phy->phy_index,
         sci_base_state_machine_get_state(
            scic_sds_controller_get_base_state_machine(this_controller))
      ));
   }
}
