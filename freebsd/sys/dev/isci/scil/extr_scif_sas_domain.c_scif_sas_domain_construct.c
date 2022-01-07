
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_11__ {int core_object; int free_remote_device_pool; } ;
struct TYPE_9__ {int status; int * timer; } ;
struct TYPE_10__ {void* is_config_route_table_needed; TYPE_1__ operation; TYPE_3__* controller; scalar_t__ device_start_count; void* is_port_ready; int request_list; scalar_t__ core_object; int remote_device_list; int parent; } ;
typedef int SCI_OBJECT_HANDLE_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;
typedef TYPE_3__ SCIF_SAS_CONTROLLER_T ;


 void* FALSE ;
 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_INITIALIZATION ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_SUCCESS ;
 int sci_abstract_list_construct (int *,int *) ;
 int sci_base_domain_construct (int *,int ,int ) ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_fast_list_init (int *) ;
 int sci_object_set_association (int ,TYPE_2__*) ;
 int scic_controller_get_port_handle (int ,int ,scalar_t__*) ;
 int scif_sas_domain_initialize_state_logging (TYPE_2__*) ;
 int scif_sas_domain_state_table ;

void scif_sas_domain_construct(
   SCIF_SAS_DOMAIN_T * fw_domain,
   U8 domain_id,
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_INITIALIZATION,
      "scif_sas_domain_construct(0x%x, 0x%x, 0x%x) enter\n",
      fw_domain, domain_id, fw_controller
   ));

   sci_base_domain_construct(
      &fw_domain->parent,
      sci_base_object_get_logger(fw_controller),
      scif_sas_domain_state_table
   );

   scif_sas_domain_initialize_state_logging(fw_domain);

   sci_abstract_list_construct(
      &fw_domain->remote_device_list, &fw_controller->free_remote_device_pool
   );



   scic_controller_get_port_handle(
      fw_controller->core_object, domain_id, &fw_domain->core_object
   );


   sci_object_set_association(
      (SCI_OBJECT_HANDLE_T) fw_domain->core_object, fw_domain
   );

   sci_fast_list_init(&fw_domain->request_list);

   fw_domain->operation.timer = ((void*)0);

   fw_domain->is_port_ready = FALSE;
   fw_domain->device_start_count = 0;
   fw_domain->controller = fw_controller;
   fw_domain->operation.status = SCI_SUCCESS;
   fw_domain->is_config_route_table_needed = FALSE;
}
