
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U8 ;
typedef int U16 ;
struct TYPE_6__ {int phy_configured_mask; int phy_ready_mask; int (* link_up_handler ) (TYPE_2__*,TYPE_1__*,int ,int *) ;int timer_pending; } ;
struct TYPE_7__ {int * phy_table; TYPE_1__ port_agent; } ;
typedef TYPE_1__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 int FALSE ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_MAX_PHYS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int scic_sds_phy_get_port (int *) ;
 int stub1 (TYPE_2__*,TYPE_1__*,int ,int *) ;

__attribute__((used)) static
void scic_sds_mpc_agent_timeout_handler(
   void * object
)
{
   U8 index;
   SCIC_SDS_CONTROLLER_T * controller = (SCIC_SDS_CONTROLLER_T *)object;
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent = &controller->port_agent;
   U16 configure_phy_mask;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT,
      "scic_sds_mpc_agent_timeout_handler(0x%08x) enter\n",
      controller
   ));

   port_agent->timer_pending = FALSE;


   configure_phy_mask = ~port_agent->phy_configured_mask & port_agent->phy_ready_mask;

   for (index = 0; index < SCI_MAX_PHYS; index++)
   {
      if (configure_phy_mask & (1 << index))
      {
         port_agent->link_up_handler(
                        controller,
                        port_agent,
                        scic_sds_phy_get_port(&controller->phy_table[index]),
                        &controller->phy_table[index]
                     );
      }
   }
}
