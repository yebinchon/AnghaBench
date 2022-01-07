
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int pool; } ;
struct TYPE_21__ {TYPE_3__ hprq; } ;
struct TYPE_15__ {int current_activity_phy_index; int current_smp_request; } ;
struct TYPE_16__ {TYPE_1__ smp_device; } ;
struct TYPE_20__ {TYPE_2__ protocol_device; TYPE_4__* domain; } ;
struct TYPE_19__ {int list_element; TYPE_6__* device; } ;
struct TYPE_18__ {TYPE_7__* controller; } ;
typedef TYPE_5__ SCIF_SAS_REQUEST_T ;
typedef TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_7__ SCIF_SAS_CONTROLLER_T ;
typedef int POINTER_UINT ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SMP_FUNCTION_DISCOVER ;
 int sci_base_object_get_logger (TYPE_6__*) ;
 int sci_fast_list_remove_element (int *) ;
 scalar_t__ sci_object_get_association (TYPE_5__*) ;
 int sci_pool_put (int ,int ) ;
 int scif_cb_start_internal_io_task_schedule (TYPE_7__*,int ,TYPE_7__*) ;
 int scif_sas_controller_start_high_priority_io ;
 void* scif_sas_smp_request_construct_discover (TYPE_7__*,TYPE_6__*,int ,void*,void*) ;

void scif_sas_smp_remote_device_target_reset_poll(
   SCIF_SAS_REQUEST_T * fw_request
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = fw_request->device;
   SCIF_SAS_CONTROLLER_T * fw_controller = fw_device->domain->controller;
   void * new_command_handle;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_target_reset_poll(0x%x) enter\n",
      fw_request
   ));




   sci_fast_list_remove_element(&fw_request->list_element);

   fw_device->protocol_device.smp_device.current_smp_request =
      SMP_FUNCTION_DISCOVER;



   new_command_handle = scif_sas_smp_request_construct_discover(
      fw_device->domain->controller,
      fw_device,
      fw_device->protocol_device.smp_device.current_activity_phy_index,
      (void *)sci_object_get_association(fw_request),
      (void *)fw_request
   );


   sci_pool_put(fw_controller->hprq.pool, (POINTER_UINT) new_command_handle);


   scif_cb_start_internal_io_task_schedule(
      fw_controller, scif_sas_controller_start_high_priority_io, fw_controller
   );
}
