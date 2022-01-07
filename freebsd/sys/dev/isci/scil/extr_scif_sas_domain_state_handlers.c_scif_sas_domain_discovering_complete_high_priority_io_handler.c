
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ current_activity; } ;
struct TYPE_7__ {TYPE_1__ smp_device; } ;
struct TYPE_10__ {int parent; TYPE_3__* state_handlers; TYPE_2__ protocol_device; } ;
struct TYPE_9__ {int parent; int list_element; int core_object; } ;
struct TYPE_8__ {int (* complete_high_priority_io_handler ) (int *,int *,void*,int ) ;} ;
typedef int SCI_STATUS ;
typedef int SCI_IO_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_DOMAIN_T ;
typedef TYPE_4__ SCIF_SAS_REQUEST_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef scalar_t__ SCIC_TRANSPORT_PROTOCOL ;


 scalar_t__ SCIC_SMP_PROTOCOL ;
 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET ;
 int sci_base_object_get_logger (int *) ;
 int sci_fast_list_remove_element (int *) ;
 scalar_t__ scic_io_request_get_protocol (int ) ;
 int stub1 (int *,int *,void*,int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_discovering_complete_high_priority_io_handler(
   SCI_BASE_DOMAIN_T * domain,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * io_request,
   void * response_data,
   SCI_IO_STATUS completion_status
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                          remote_device;
   SCIF_SAS_REQUEST_T * fw_request= (SCIF_SAS_REQUEST_T*) io_request;

   SCIC_TRANSPORT_PROTOCOL protocol;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_domain_discovering_complete_high_priority_io_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      domain, remote_device, io_request, response_data
   ));

   protocol = scic_io_request_get_protocol(fw_request->core_object);
   if (
         (protocol != SCIC_SMP_PROTOCOL)
      || (fw_device->protocol_device.smp_device.current_activity !=
                SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_TARGET_RESET)
   )
   {
      sci_fast_list_remove_element(&fw_request->list_element);
   }

   return fw_device->state_handlers->complete_high_priority_io_handler(
             &fw_device->parent, &fw_request->parent, response_data, completion_status
          );
}
