
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_5__ {int * list_head; } ;
struct TYPE_7__ {TYPE_1__ request_list; } ;
struct TYPE_6__ {int core_object; } ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef TYPE_2__ SCIF_SAS_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_DOMAIN_T ;
typedef scalar_t__ SCIC_TRANSPORT_PROTOCOL ;


 scalar_t__ SCIC_SMP_PROTOCOL ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 scalar_t__ scic_io_request_get_protocol (int ) ;

U8 scif_sas_domain_get_smp_request_count(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCI_FAST_LIST_ELEMENT_T * element = fw_domain->request_list.list_head;
   SCIF_SAS_REQUEST_T * request = ((void*)0);
   U8 count = 0;
   SCIC_TRANSPORT_PROTOCOL protocol;




   while (element != ((void*)0))
   {
      request = (SCIF_SAS_REQUEST_T*) sci_fast_list_get_object(element);


      element = sci_fast_list_get_next(element);

      protocol = scic_io_request_get_protocol(request->core_object);

      if ( protocol == SCIC_SMP_PROTOCOL)
         count++;
   }

   return count;
}
