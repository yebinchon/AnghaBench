
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ protocol; } ;
struct TYPE_6__ {scalar_t__ ncq_tag; TYPE_1__ sequence; } ;
struct SCIF_SAS_REQUEST {TYPE_2__ stp; struct SCIF_SAS_REMOTE_DEVICE* device; } ;
struct SCIF_SAS_REMOTE_DEVICE {TYPE_4__* domain; } ;
typedef scalar_t__ U8 ;
struct TYPE_7__ {int * list_head; } ;
struct TYPE_8__ {TYPE_3__ request_list; } ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef struct SCIF_SAS_REQUEST SCIF_SAS_REQUEST_T ;
typedef TYPE_4__ SCIF_SAS_DOMAIN_T ;


 scalar_t__ SAT_PROTOCOL_FPDMA ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;

struct SCIF_SAS_REQUEST *
scif_sas_stp_remote_device_get_request_by_ncq_tag(
   struct SCIF_SAS_REMOTE_DEVICE * fw_device,
   U8 ncq_tag
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = fw_device->domain;
   SCI_FAST_LIST_ELEMENT_T * pending_request_element;
   SCIF_SAS_REQUEST_T * pending_request = ((void*)0);
   SCIF_SAS_REQUEST_T * matching_request = ((void*)0);

   pending_request_element = fw_domain->request_list.list_head;

   while (pending_request_element != ((void*)0))
   {
      pending_request =
         (SCIF_SAS_REQUEST_T*) sci_fast_list_get_object(pending_request_element);



      pending_request_element = sci_fast_list_get_next(pending_request_element);

      if (
            (pending_request->device == fw_device) &&
            (pending_request->stp.sequence.protocol == SAT_PROTOCOL_FPDMA) &&
            (pending_request->stp.ncq_tag == ncq_tag)
         )
      {
         matching_request = pending_request;
      }
   }

   return matching_request;
}
