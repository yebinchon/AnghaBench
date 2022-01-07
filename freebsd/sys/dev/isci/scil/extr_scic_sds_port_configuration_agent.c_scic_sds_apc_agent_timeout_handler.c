
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int U32 ;
typedef int U16 ;
struct TYPE_11__ {int next_phy_to_start; scalar_t__ phy_startup_timer_pending; int * phy_table; } ;
struct TYPE_10__ {int phy_configured_mask; int phy_ready_mask; scalar_t__ timer_pending; } ;
typedef TYPE_1__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef TYPE_2__ SCIC_SDS_CONTROLLER_T ;


 scalar_t__ FALSE ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_MAX_PHYS ;
 scalar_t__ TRUE ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int scic_sds_apc_agent_configure_ports (TYPE_2__*,TYPE_1__*,int *,scalar_t__) ;
 TYPE_1__* scic_sds_controller_get_port_configuration_agent (TYPE_2__*) ;
 scalar_t__ scic_sds_controller_is_start_complete (TYPE_2__*) ;
 int scic_sds_controller_port_agent_configured_ports (TYPE_2__*) ;

__attribute__((used)) static
void scic_sds_apc_agent_timeout_handler(
   void * object
)
{
   U32 index;
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent;
   SCIC_SDS_CONTROLLER_T * controller = (SCIC_SDS_CONTROLLER_T *)object;
   U16 configure_phy_mask;

   port_agent = scic_sds_controller_get_port_configuration_agent(controller);

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT,
      "scic_sds_apc_agent_timeout_handler(0x%08x) enter\n",
      controller
   ));

   port_agent->timer_pending = FALSE;

   configure_phy_mask = ~port_agent->phy_configured_mask & port_agent->phy_ready_mask;

   if (configure_phy_mask != 0x00)
   {
      for (index = 0; index < SCI_MAX_PHYS; index++)
      {
         if (configure_phy_mask & (1 << index))
         {
            scic_sds_apc_agent_configure_ports(
               controller, port_agent, &controller->phy_table[index], FALSE
            );
         }
      }


      if (
            (port_agent->phy_ready_mask == port_agent->phy_configured_mask) &&
            (controller->next_phy_to_start == SCI_MAX_PHYS) &&
            (controller->phy_startup_timer_pending == FALSE)
         )
      {


         if (scic_sds_controller_is_start_complete(controller) == TRUE)
         {
            scic_sds_controller_port_agent_configured_ports(controller);
         }
      }
   }
}
