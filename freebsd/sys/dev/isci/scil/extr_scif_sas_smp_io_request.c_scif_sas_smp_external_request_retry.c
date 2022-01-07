
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_22__ {int pool; } ;
struct TYPE_25__ {TYPE_5__ hprq; } ;
struct TYPE_19__ {int list_element; TYPE_6__* device; } ;
struct TYPE_24__ {scalar_t__ retry_count; TYPE_2__ parent; } ;
struct TYPE_20__ {int current_smp_request; int current_activity_phy_index; } ;
struct TYPE_21__ {TYPE_3__ smp_device; } ;
struct TYPE_23__ {TYPE_4__ protocol_device; TYPE_1__* domain; } ;
struct TYPE_18__ {TYPE_8__* controller; } ;
typedef int SCI_STATUS ;
typedef TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_7__ SCIF_SAS_IO_REQUEST_T ;
typedef TYPE_8__ SCIF_SAS_CONTROLLER_T ;
typedef int POINTER_UINT ;


 int PHY_OPERATION_HARD_RESET ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;


 int sci_base_object_get_logger (TYPE_6__*) ;
 int sci_fast_list_remove_element (int *) ;
 scalar_t__ sci_object_get_association (TYPE_7__*) ;
 int sci_pool_put (int ,int ) ;
 int scif_cb_start_internal_io_task_schedule (TYPE_8__*,int ,TYPE_8__*) ;
 int scif_sas_controller_start_high_priority_io ;
 void* scif_sas_smp_request_construct_discover (TYPE_8__*,TYPE_6__*,int ,void*,void*) ;
 void* scif_sas_smp_request_construct_phy_control (TYPE_8__*,TYPE_6__*,int ,int ,void*,void*) ;

SCI_STATUS scif_sas_smp_external_request_retry(
   SCIF_SAS_IO_REQUEST_T * old_io
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = old_io->parent.device;
   SCIF_SAS_CONTROLLER_T * fw_controller;
   SCIF_SAS_IO_REQUEST_T * new_io;
   void * new_request_memory = ((void*)0);
   U8 retry_count = old_io->retry_count;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_IO_REQUEST | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_external_request_retry(0x%x) time %d!\n",
      old_io
   ));

   fw_controller = fw_device->domain->controller;




   sci_fast_list_remove_element(&old_io->parent.list_element);

   switch (fw_device->protocol_device.smp_device.current_smp_request)
   {
      case 129:


         new_request_memory = scif_sas_smp_request_construct_discover(
            fw_controller, fw_device,
            fw_device->protocol_device.smp_device.current_activity_phy_index,
            (void *)sci_object_get_association(old_io),
            (void *)old_io
         );

         break;

      case 128:

         new_request_memory = scif_sas_smp_request_construct_phy_control(
            fw_controller, fw_device, PHY_OPERATION_HARD_RESET,
            fw_device->protocol_device.smp_device.current_activity_phy_index,
            (void *)sci_object_get_association(old_io),
            (void *)old_io
         );

         break;

      default:

         return SCI_FAILURE;
   }


   new_io = (SCIF_SAS_IO_REQUEST_T *) new_request_memory;
   new_io->retry_count = ++retry_count;


   sci_pool_put(fw_controller->hprq.pool, (POINTER_UINT) new_request_memory);


   scif_cb_start_internal_io_task_schedule(
      fw_controller, scif_sas_controller_start_high_priority_io, fw_controller
   );

   return SCI_SUCCESS;
}
