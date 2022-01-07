
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int request_list; } ;
struct TYPE_9__ {int parent; TYPE_2__* state_handlers; } ;
struct TYPE_8__ {int list_element; int parent; } ;
struct TYPE_6__ {scalar_t__ (* start_task_handler ) (int *,int *) ;} ;
struct TYPE_7__ {TYPE_1__ parent; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_DOMAIN_T ;
typedef TYPE_3__ SCIF_SAS_REQUEST_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_5__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (int *) ;
 int sci_fast_list_insert_tail (int *,int *) ;
 scalar_t__ stub1 (int *,int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_ready_start_task_handler(
   SCI_BASE_DOMAIN_T * domain,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * task_request
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T*) domain;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                           remote_device;
   SCIF_SAS_REQUEST_T * fw_request = (SCIF_SAS_REQUEST_T*) task_request;
   SCI_STATUS status;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_sas_domain_ready_start_task_handler(0x%x, 0x%x, 0x%x) enter\n",
      domain, remote_device, task_request
   ));

   status = fw_device->state_handlers->parent.start_task_handler(
               &fw_device->parent, &fw_request->parent
            );

   if (status == SCI_SUCCESS)
   {

      sci_fast_list_insert_tail(
         &fw_domain->request_list, &fw_request->list_element
      );
   }

   return status;
}
