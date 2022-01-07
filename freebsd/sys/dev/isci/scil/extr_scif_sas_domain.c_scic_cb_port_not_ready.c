
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {scalar_t__ controller; int parent; TYPE_1__* state_handlers; int is_port_ready; } ;
struct TYPE_4__ {int (* port_not_ready_handler ) (int *,int ) ;} ;
typedef int SCI_PORT_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int ASSERT (int) ;
 int FALSE ;
 int SCIC_PORT_NOT_READY_RECONFIGURING ;
 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 scalar_t__ sci_object_get_association (int ) ;
 int stub1 (int *,int ) ;

void scic_cb_port_not_ready(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_PORT_HANDLE_T port,
   U32 reason_code
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T*)
                                   sci_object_get_association(port);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scic_cb_port_not_ready(0x%x, 0x%x) enter\n",
      controller, port
   ));



   ASSERT(sci_object_get_association(controller) == fw_domain->controller);



   if (reason_code != SCIC_PORT_NOT_READY_RECONFIGURING)
   {
      fw_domain->is_port_ready = FALSE;

      fw_domain->state_handlers->port_not_ready_handler(
                                    &fw_domain->parent, reason_code);
   }
}
