
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int domain; } ;
struct TYPE_6__ {int state_machine; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCI_BASE_DOMAIN_T ;
typedef int SCIF_SAS_TASK_REQUEST_T ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 scalar_t__ SCI_SAS_HARD_RESET ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_base_state_machine_get_state (int *) ;
 int scif_sas_domain_cancel_smp_activities (int ) ;
 int scif_sas_domain_ready_start_task_handler (TYPE_1__*,int *,int *) ;
 scalar_t__ scif_sas_task_request_get_function (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_discovering_start_task_handler(
   SCI_BASE_DOMAIN_T * domain,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * task_request
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                          remote_device;
   SCIF_SAS_TASK_REQUEST_T * fw_task = (SCIF_SAS_TASK_REQUEST_T*)task_request;


   if (scif_sas_task_request_get_function(fw_task)
             == SCI_SAS_HARD_RESET)
   {


      scif_sas_domain_cancel_smp_activities(fw_device->domain);

      return scif_sas_domain_ready_start_task_handler(domain, remote_device, task_request);
   }
   else{
      SCIF_LOG_WARNING((
         sci_base_object_get_logger(domain),
         SCIF_LOG_OBJECT_DOMAIN,
         "Domain:0x%x Device:0x%x State:0x%x start task message invalid\n",
         domain, remote_device,
         sci_base_state_machine_get_state(&domain->state_machine)
      ));

      return SCI_FAILURE_INVALID_STATE;
   }
}
