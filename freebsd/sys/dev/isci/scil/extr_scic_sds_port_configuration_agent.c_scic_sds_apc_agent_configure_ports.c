
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef enum SCIC_SDS_APC_ACTIVITY { ____Placeholder_SCIC_SDS_APC_ACTIVITY } SCIC_SDS_APC_ACTIVITY ;
typedef scalar_t__ U8 ;
struct TYPE_18__ {size_t phy_index; } ;
struct TYPE_17__ {int phy_configured_mask; TYPE_1__* phy_valid_port_range; } ;
struct TYPE_16__ {int active_phy_mask; int physical_port_index; } ;
struct TYPE_15__ {scalar_t__ min_index; scalar_t__ max_index; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_PORT_HANDLE_T ;
typedef TYPE_2__ SCIC_SDS_PORT_T ;
typedef TYPE_3__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef TYPE_4__ SCIC_SDS_PHY_T ;
typedef int SCIC_SDS_CONTROLLER_T ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;



 int SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION ;
 TYPE_2__* SCI_INVALID_HANDLE ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (int *) ;
 int scic_controller_get_port_handle (int *,scalar_t__,scalar_t__*) ;
 int scic_sds_apc_agent_start_timer (int *,TYPE_3__*,TYPE_4__*,int ) ;
 int scic_sds_port_add_phy (TYPE_2__*,TYPE_4__*) ;
 TYPE_2__* scic_sds_port_configuration_agent_find_port (int *,TYPE_4__*) ;
 scalar_t__ scic_sds_port_is_valid_phy_assignment (TYPE_2__*,size_t) ;

__attribute__((used)) static
void scic_sds_apc_agent_configure_ports(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent,
   SCIC_SDS_PHY_T * phy,
   BOOL start_timer
)
{
   U8 port_index;
   SCI_STATUS status;
   SCIC_SDS_PORT_T * port;
   SCI_PORT_HANDLE_T port_handle;
   enum SCIC_SDS_APC_ACTIVITY apc_activity = 129;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT | SCIC_LOG_OBJECT_PHY,
      "scic_sds_apc_agent_configure_ports(0x%08x, 0x%08x, 0x%08x, %d) enter\n",
      controller, port_agent, phy, start_timer
   ));

   port = scic_sds_port_configuration_agent_find_port(controller, phy);

   if (port != SCI_INVALID_HANDLE)
   {
      if (scic_sds_port_is_valid_phy_assignment(port, phy->phy_index))
         apc_activity = 130;
      else
         apc_activity = 129;
   }
   else
   {





      for (
             port_index = port_agent->phy_valid_port_range[phy->phy_index].min_index;
             port_index <= port_agent->phy_valid_port_range[phy->phy_index].max_index;
             port_index++
          )
      {
         scic_controller_get_port_handle(controller, port_index, &port_handle);

         port = (SCIC_SDS_PORT_T *)port_handle;


         if (scic_sds_port_is_valid_phy_assignment(port, phy->phy_index))
         {



            if (port->active_phy_mask > (1 << phy->phy_index))
            {
               apc_activity = 129;
               break;
            }




            if (port->physical_port_index == phy->phy_index)
            {




               if (apc_activity != 128)
               {
                  apc_activity = 130;
               }

               break;
            }




            if (port->active_phy_mask == 0)
            {
               apc_activity = 128;
            }
         }
         else if (port->active_phy_mask != 0)
         {



            apc_activity = 129;
         }
      }
   }







   if (
         (start_timer == FALSE)
      && (apc_activity == 128)
      )
   {
      apc_activity = 130;
   }

   switch (apc_activity)
   {
   case 130:
      status = scic_sds_port_add_phy(port, phy);

      if (status == SCI_SUCCESS)
      {
         port_agent->phy_configured_mask |= (1 << phy->phy_index);
      }
      break;

   case 128:
      scic_sds_apc_agent_start_timer(
         controller, port_agent, phy, SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION
      );
      break;

   case 129:
   default:

      break;
   }
}
