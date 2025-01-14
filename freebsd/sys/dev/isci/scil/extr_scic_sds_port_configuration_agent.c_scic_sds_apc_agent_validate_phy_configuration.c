
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_11__ {int * phy_table; } ;
struct TYPE_10__ {TYPE_1__* phy_valid_port_range; } ;
struct TYPE_9__ {size_t min_index; size_t max_index; } ;
typedef int SCI_STATUS ;
typedef int SCI_SAS_ADDRESS_T ;
typedef TYPE_2__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef TYPE_3__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 size_t SCI_MAX_PHYS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 scalar_t__ sci_sas_address_compare (int ,int ) ;
 int scic_sds_phy_get_sas_address (int *,int *) ;
 int scic_sds_port_configuration_agent_validate_ports (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_apc_agent_validate_phy_configuration(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent
)
{
   U8 phy_index;
   U8 port_index;
   SCI_SAS_ADDRESS_T sas_address;
   SCI_SAS_ADDRESS_T phy_assigned_address;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT,
      "scic_sds_apc_agent_validate_phy_configuration(0x%08x, 0x%08x) enter\n",
      controller, port_agent
   ));

   phy_index = 0;

   while (phy_index < SCI_MAX_PHYS)
   {
      port_index = phy_index;


      scic_sds_phy_get_sas_address(
         &controller->phy_table[phy_index], &sas_address
      );

      while (++phy_index < SCI_MAX_PHYS)
      {
         scic_sds_phy_get_sas_address(
            &controller->phy_table[phy_index], &phy_assigned_address
         );


         if (sci_sas_address_compare(sas_address, phy_assigned_address) == 0)
         {
            port_agent->phy_valid_port_range[phy_index].min_index = port_index;
            port_agent->phy_valid_port_range[phy_index].max_index = phy_index;
         }
         else
         {
            port_agent->phy_valid_port_range[phy_index].min_index = phy_index;
            port_agent->phy_valid_port_range[phy_index].max_index = phy_index;
            break;
         }
      }
   }

   return scic_sds_port_configuration_agent_validate_ports(controller, port_agent);
}
