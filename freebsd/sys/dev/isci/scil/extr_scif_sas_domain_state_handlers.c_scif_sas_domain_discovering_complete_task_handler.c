
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (int *) ;
 int scif_sas_domain_ready_complete_task_handler (int *,int *,int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_discovering_complete_task_handler(
   SCI_BASE_DOMAIN_T * domain,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * task_request
)
{
   SCI_STATUS status;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_sas_domain_discovering_complete_task_handler(0x%x, 0x%x, 0x%x) enter\n",
      domain, remote_device, task_request
   ));

   status = scif_sas_domain_ready_complete_task_handler(
               domain, remote_device, task_request
            );

   return status;
}
