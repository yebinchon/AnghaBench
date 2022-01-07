
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * phy_table; } ;
struct TYPE_8__ {TYPE_1__* phy_valid_port_range; } ;
struct TYPE_7__ {int max_index; int min_index; } ;
typedef int SCI_STATUS ;
typedef int SCI_SAS_ADDRESS_T ;
typedef TYPE_2__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef TYPE_3__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 scalar_t__ sci_sas_address_compare (int ,int ) ;
 int scic_sds_phy_get_sas_address (int *,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_port_configuration_agent_validate_ports(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent
)
{

   SCI_SAS_ADDRESS_T first_address;
   SCI_SAS_ADDRESS_T second_address;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_configuration_agent_validate_ports(0x%08x, 0x%08x) enter\n",
      controller, port_agent
   ));



   if (
         (port_agent->phy_valid_port_range[0].max_index != 0)
      || (port_agent->phy_valid_port_range[1].max_index != 1)
      || (port_agent->phy_valid_port_range[2].max_index != 2)
      || (port_agent->phy_valid_port_range[3].max_index != 3)
      )
   {
      return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
   }



   if (
         (port_agent->phy_valid_port_range[0].min_index == 0)
      && (port_agent->phy_valid_port_range[1].min_index == 0)
      && (port_agent->phy_valid_port_range[2].min_index == 0)
      && (port_agent->phy_valid_port_range[3].min_index == 0)
      )
   {
      return SCI_SUCCESS;
   }





   if (port_agent->phy_valid_port_range[2].min_index == 1)
   {
      return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
   }




   scic_sds_phy_get_sas_address(&controller->phy_table[0], &first_address);
   scic_sds_phy_get_sas_address(&controller->phy_table[3], &second_address);

   if (sci_sas_address_compare(first_address, second_address) == 0)
   {
      return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
   }




   if (
         (port_agent->phy_valid_port_range[0].min_index == 0)
      && (port_agent->phy_valid_port_range[1].min_index == 1)
      )
   {
      scic_sds_phy_get_sas_address(&controller->phy_table[0], &first_address);
      scic_sds_phy_get_sas_address(&controller->phy_table[2], &second_address);

      if (sci_sas_address_compare(first_address, second_address) == 0)
      {
         return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
      }
   }




   if (
         (port_agent->phy_valid_port_range[2].min_index == 2)
      && (port_agent->phy_valid_port_range[3].min_index == 3)
      )
   {
      scic_sds_phy_get_sas_address(&controller->phy_table[1], &first_address);
      scic_sds_phy_get_sas_address(&controller->phy_table[3], &second_address);

      if (sci_sas_address_compare(first_address, second_address) == 0)
      {
         return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
      }
   }


   return SCI_SUCCESS;
}
