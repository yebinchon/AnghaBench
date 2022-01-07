
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ broadcast_change_count; int core_object; } ;
typedef int SCI_PORT_HANDLE_T ;
typedef int SCI_PHY_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_DOMAIN_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 scalar_t__ sci_object_get_association (int ) ;
 int scic_port_enable_broadcast_change_notification (int ) ;
 int scif_cb_domain_change_notification (int *,TYPE_1__*) ;
 int scif_sas_domain_is_in_smp_activity (TYPE_1__*) ;

void scic_cb_port_bc_change_primitive_recieved(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_PORT_HANDLE_T port,
   SCI_PHY_HANDLE_T phy
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T*)
                                   sci_object_get_association(port);

   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)
                                           sci_object_get_association(controller);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scic_cb_port_bc_change_primitive_recieved(0x%x, 0x%x, 0x%x) enter\n",
      controller, port, phy
   ));

   if (fw_domain->broadcast_change_count == 0)
   {



      scic_port_enable_broadcast_change_notification(fw_domain->core_object);
   }

   fw_domain->broadcast_change_count++;



   if( ! scif_sas_domain_is_in_smp_activity(fw_domain) )

      scif_cb_domain_change_notification(fw_controller, fw_domain);
}
