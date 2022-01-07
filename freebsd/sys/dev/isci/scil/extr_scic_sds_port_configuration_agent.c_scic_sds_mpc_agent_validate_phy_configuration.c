
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t U8 ;
typedef int U32 ;
struct TYPE_17__ {TYPE_1__* ports; } ;
struct TYPE_18__ {TYPE_2__ sds1; } ;
struct TYPE_22__ {int * phy_table; int * port_table; TYPE_3__ oem_parameters; } ;
struct TYPE_21__ {TYPE_4__* phy_valid_port_range; } ;
struct TYPE_20__ {scalar_t__ low; scalar_t__ high; } ;
struct TYPE_19__ {size_t min_index; size_t max_index; } ;
struct TYPE_16__ {int phy_mask; } ;
typedef int SCI_STATUS ;
typedef TYPE_5__ SCI_SAS_ADDRESS_T ;
typedef TYPE_6__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef TYPE_7__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION ;
 size_t SCI_MAX_PHYS ;
 size_t SCI_MAX_PORTS ;
 int sci_base_object_get_logger (TYPE_7__*) ;
 scalar_t__ sci_sas_address_compare (TYPE_5__,TYPE_5__) ;
 int scic_sds_phy_get_sas_address (int *,TYPE_5__*) ;
 int scic_sds_port_add_phy (int *,int *) ;
 int scic_sds_port_configuration_agent_validate_ports (TYPE_7__*,TYPE_6__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_mpc_agent_validate_phy_configuration(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent
)
{
   U32 phy_mask;
   U32 assigned_phy_mask;
   SCI_SAS_ADDRESS_T sas_address;
   SCI_SAS_ADDRESS_T phy_assigned_address;
   U8 port_index;
   U8 phy_index;

   assigned_phy_mask = 0;
   sas_address.high = 0;
   sas_address.low = 0;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT,
      "scic_sds_mpc_agent_validate_phy_configuration(0x%08x, 0x%08x) enter\n",
      controller, port_agent
   ));

   for (port_index = 0; port_index < SCI_MAX_PORTS; port_index++)
   {
      phy_mask = controller->oem_parameters.sds1.ports[port_index].phy_mask;

      if (phy_mask != 0)
      {


         if ((phy_mask & ~assigned_phy_mask) == 0)
         {
            return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
         }


         for (phy_index = 0; phy_index < SCI_MAX_PHYS; phy_index++)
         {
            if ((1 << phy_index) & phy_mask)
            {
               scic_sds_phy_get_sas_address(
                  &controller->phy_table[phy_index], &sas_address
               );




               port_agent->phy_valid_port_range[phy_index].min_index = port_index;
               port_agent->phy_valid_port_range[phy_index].max_index = phy_index;

               if (phy_index != port_index)
               {
                  return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
               }

               break;
            }
         }





         while (phy_index < SCI_MAX_PHYS)
         {
            if ((1 << phy_index) & phy_mask)
            {
               scic_sds_phy_get_sas_address(
                  &controller->phy_table[phy_index], &phy_assigned_address
               );

               if (sci_sas_address_compare(sas_address, phy_assigned_address) != 0)
               {


                  return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
               }

               port_agent->phy_valid_port_range[phy_index].min_index = port_index;
               port_agent->phy_valid_port_range[phy_index].max_index = phy_index;

               scic_sds_port_add_phy(
                  &controller->port_table[port_index],
                  &controller->phy_table[phy_index]
               );

               assigned_phy_mask |= (1 << phy_index);
            }

            phy_index++;
         }
      }
   }

   return scic_sds_port_configuration_agent_validate_ports(controller, port_agent);
}
