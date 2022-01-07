
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int protocols; int sas_address; } ;
struct TYPE_12__ {int protocols; int sas_address; } ;
struct TYPE_15__ {scalar_t__ index; TYPE_2__ remote; TYPE_1__ local; int phy_mask; } ;
struct TYPE_14__ {scalar_t__ logical_port_index; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_PORT_HANDLE_T ;
typedef TYPE_3__ SCIC_SDS_PORT_T ;
typedef TYPE_4__ SCIC_PORT_PROPERTIES_T ;


 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 scalar_t__ SCIC_SDS_DUMMY_PORT ;
 int SCI_FAILURE_INVALID_PORT ;
 scalar_t__ SCI_INVALID_HANDLE ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int scic_sds_port_get_attached_protocols (TYPE_3__*,int *) ;
 int scic_sds_port_get_attached_sas_address (TYPE_3__*,int *) ;
 int scic_sds_port_get_phys (TYPE_3__*) ;
 int scic_sds_port_get_protocols (TYPE_3__*,int *) ;
 int scic_sds_port_get_sas_address (TYPE_3__*,int *) ;

SCI_STATUS scic_port_get_properties(
   SCI_PORT_HANDLE_T port,
   SCIC_PORT_PROPERTIES_T * properties
)
{
   SCIC_SDS_PORT_T *this_port = (SCIC_SDS_PORT_T *)port;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_port_get_properties(0x%x, 0x%x) enter\n",
      port, properties
   ));

   if (
         (port == SCI_INVALID_HANDLE)
      || (this_port->logical_port_index == SCIC_SDS_DUMMY_PORT)
      )
   {
      return SCI_FAILURE_INVALID_PORT;
   }

   properties->index = this_port->logical_port_index;
   properties->phy_mask = scic_sds_port_get_phys(this_port);
   scic_sds_port_get_sas_address(this_port, &properties->local.sas_address);
   scic_sds_port_get_protocols(this_port, &properties->local.protocols);
   scic_sds_port_get_attached_sas_address(this_port, &properties->remote.sas_address);
   scic_sds_port_get_attached_protocols(this_port, &properties->remote.protocols);

   return SCI_SUCCESS;
}
