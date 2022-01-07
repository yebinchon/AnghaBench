
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* controller; int remote_device_list; } ;
struct TYPE_14__ {int parent; TYPE_3__* state_handlers; } ;
struct TYPE_12__ {int (* stop_handler ) (int *) ;} ;
struct TYPE_13__ {TYPE_2__ parent; } ;
struct TYPE_11__ {int hprq; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef int SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_5__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_DOMAIN_STATE_STOPPING ;
 int SET_STATE_HANDLER (TYPE_5__*,int ,int ) ;
 int * sci_abstract_list_get_front (int *) ;
 int * sci_abstract_list_get_next (int *) ;
 scalar_t__ sci_abstract_list_get_object (int *) ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int scif_sas_domain_state_handler_table ;
 int scif_sas_domain_transition_from_discovering_state (TYPE_5__*) ;
 int scif_sas_domain_transition_to_stopped_state (TYPE_5__*) ;
 int scif_sas_high_priority_request_queue_purge_domain (int *,TYPE_5__*) ;
 int stub1 (int *) ;

__attribute__((used)) static
void scif_sas_domain_stopping_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device;
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *)object;
   SCI_ABSTRACT_ELEMENT_T * element = sci_abstract_list_get_front(
                                             &fw_domain->remote_device_list
                                          );

   SET_STATE_HANDLER(
      fw_domain,
      scif_sas_domain_state_handler_table,
      SCI_BASE_DOMAIN_STATE_STOPPING
   );




   scif_sas_domain_transition_from_discovering_state(fw_domain);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_stopping_state_enter(0x%x) enter\n",
      fw_domain
   ));

   scif_sas_high_priority_request_queue_purge_domain(
      &fw_domain->controller->hprq, fw_domain
   );



   while (element != ((void*)0))
   {
      fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                  sci_abstract_list_get_object(element);



      fw_device->state_handlers->parent.stop_handler(&fw_device->parent);

      element = sci_abstract_list_get_next(element);
   }


   scif_sas_domain_transition_to_stopped_state(fw_domain);
}
