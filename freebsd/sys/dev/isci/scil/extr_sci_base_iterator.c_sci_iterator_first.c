
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; int current; } ;
typedef scalar_t__ SCI_ITERATOR_HANDLE_T ;
typedef TYPE_1__ SCI_BASE_ITERATOR_T ;


 int sci_abstract_list_get_front (int ) ;

void sci_iterator_first(
   SCI_ITERATOR_HANDLE_T iterator_handle
)
{
   SCI_BASE_ITERATOR_T * iterator = (SCI_BASE_ITERATOR_T *)iterator_handle;

   iterator->current = sci_abstract_list_get_front(iterator->list);
}
