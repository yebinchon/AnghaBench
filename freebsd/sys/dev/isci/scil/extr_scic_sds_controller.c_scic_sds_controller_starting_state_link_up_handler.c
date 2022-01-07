
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* link_up_handler ) (TYPE_1__*,TYPE_3__*,int *,int *) ;} ;
struct TYPE_7__ {TYPE_3__ port_agent; } ;
typedef int SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int scic_sds_controller_phy_timer_stop (TYPE_1__*) ;
 int scic_sds_controller_start_next_phy (TYPE_1__*) ;
 int stub1 (TYPE_1__*,TYPE_3__*,int *,int *) ;

__attribute__((used)) static
void scic_sds_controller_starting_state_link_up_handler(
   SCIC_SDS_CONTROLLER_T *this_controller,
   SCIC_SDS_PORT_T *port,
   SCIC_SDS_PHY_T *phy
)
{
   scic_sds_controller_phy_timer_stop(this_controller);

   this_controller->port_agent.link_up_handler(
      this_controller, &this_controller->port_agent, port, phy
   );


   scic_sds_controller_start_next_phy(this_controller);
}
