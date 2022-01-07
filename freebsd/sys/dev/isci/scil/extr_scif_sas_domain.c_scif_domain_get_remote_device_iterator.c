
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int remote_device_list; } ;
typedef int **** SCI_ITERATOR_HANDLE_T ;
typedef scalar_t__ SCI_DOMAIN_HANDLE_T ;
typedef TYPE_1__ SCIF_SAS_DOMAIN_T ;


 int sci_base_iterator_construct (int ****,int *) ;

SCI_ITERATOR_HANDLE_T scif_domain_get_remote_device_iterator(
   SCI_DOMAIN_HANDLE_T domain,
   void * iterator_buffer
)
{
   SCI_ITERATOR_HANDLE_T iterator = (SCI_ITERATOR_HANDLE_T *)iterator_buffer;

   sci_base_iterator_construct(
      iterator, &((SCIF_SAS_DOMAIN_T*) domain)->remote_device_list
   );


   return iterator;
}
