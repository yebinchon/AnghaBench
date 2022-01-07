
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_4__ {int parent; TYPE_1__* state_handlers; int remote_device_list; } ;
struct TYPE_3__ {scalar_t__ (* discover_handler ) (int *,int,int) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef scalar_t__ SCI_DOMAIN_HANDLE_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ SCI_WARNING_TIMER_CONFLICT ;
 int sci_abstract_list_size (int *) ;
 int sci_base_object_get_logger (scalar_t__) ;
 scalar_t__ stub1 (int *,int,int) ;

SCI_STATUS scif_domain_discover(
   SCI_DOMAIN_HANDLE_T domain,
   U32 discover_timeout,
   U32 device_timeout
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T*) domain;
   SCI_STATUS status = SCI_SUCCESS;
   SCI_STATUS op_status = SCI_SUCCESS;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_domain_discover(0x%x, 0x%x, 0x%x) enter\n",
      domain, discover_timeout, device_timeout
   ));



   if ((device_timeout * sci_abstract_list_size(&fw_domain->remote_device_list))
        > discover_timeout)
      status = SCI_WARNING_TIMER_CONFLICT;

   op_status = fw_domain->state_handlers->discover_handler(
                  &fw_domain->parent, discover_timeout, device_timeout
               );


   if ( (status == SCI_SUCCESS)
      || (status != SCI_SUCCESS && op_status != SCI_SUCCESS) )
   {
      status = op_status;
   }

   return status;
}
