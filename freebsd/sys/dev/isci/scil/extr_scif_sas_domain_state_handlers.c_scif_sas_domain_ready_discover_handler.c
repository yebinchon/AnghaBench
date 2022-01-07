
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* U32 ;
struct TYPE_4__ {int status; void* timeout; int timer; void* device_timeout; } ;
struct TYPE_5__ {TYPE_1__ operation; int controller; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_DOMAIN_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (int *) ;
 int scif_cb_timer_start (int ,int ,void*) ;
 int scif_sas_domain_transition_to_discovering_state (TYPE_2__*) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_ready_discover_handler(
   SCI_BASE_DOMAIN_T * domain,
   U32 op_timeout,
   U32 device_timeout
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *)domain;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_ready_discover_handler(0x%x, 0x%x, 0x%x) enter\n",
      domain, op_timeout, device_timeout
   ));

   fw_domain->operation.timeout = op_timeout;
   fw_domain->operation.device_timeout = device_timeout;
   fw_domain->operation.status = SCI_SUCCESS;

   scif_cb_timer_start(
      fw_domain->controller,
      fw_domain->operation.timer,
      fw_domain->operation.timeout
   );

   scif_sas_domain_transition_to_discovering_state(fw_domain);

   return fw_domain->operation.status;
}
