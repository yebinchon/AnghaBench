
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* link_down_handler ) (TYPE_1__*,TYPE_3__*,int *,int *) ;} ;
struct TYPE_5__ {TYPE_3__ port_agent; } ;
typedef int SCIC_SDS_PORT_T ;
typedef int SCIC_SDS_PHY_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int stub1 (TYPE_1__*,TYPE_3__*,int *,int *) ;

__attribute__((used)) static
void scic_sds_controller_ready_state_link_down_handler(
   SCIC_SDS_CONTROLLER_T *this_controller,
   SCIC_SDS_PORT_T *port,
   SCIC_SDS_PHY_T *phy
)
{
   this_controller->port_agent.link_down_handler(
      this_controller, &this_controller->port_agent, port, phy
   );
}
