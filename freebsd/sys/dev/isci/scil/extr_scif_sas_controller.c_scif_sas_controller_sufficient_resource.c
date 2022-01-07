
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_7__ {int pool; } ;
struct TYPE_9__ {TYPE_2__ hprq; TYPE_3__* domains; } ;
struct TYPE_6__ {size_t element_count; } ;
struct TYPE_8__ {TYPE_1__ request_list; } ;
typedef TYPE_3__ SCIF_SAS_DOMAIN_T ;
typedef TYPE_4__ SCIF_SAS_CONTROLLER_T ;
typedef int BOOL ;


 int FALSE ;
 size_t SCI_MAX_DOMAINS ;
 size_t SCI_MAX_IO_REQUESTS ;
 int TRUE ;
 size_t sci_pool_count (int ) ;

BOOL scif_sas_controller_sufficient_resource(
   SCIF_SAS_CONTROLLER_T *fw_controller
)
{
   SCIF_SAS_DOMAIN_T * fw_domain;
   U32 domain_index;
   U32 outstanding_io_count = 0;
   U32 high_priority_io_count = 0;

   for(domain_index = 0; domain_index < SCI_MAX_DOMAINS; domain_index++)
   {
      fw_domain = &fw_controller->domains[domain_index];
      outstanding_io_count += fw_domain->request_list.element_count;
   }

   high_priority_io_count = sci_pool_count(fw_controller->hprq.pool);

   if ( (outstanding_io_count + high_priority_io_count) > SCI_MAX_IO_REQUESTS )
      return FALSE;

   return TRUE;
}
