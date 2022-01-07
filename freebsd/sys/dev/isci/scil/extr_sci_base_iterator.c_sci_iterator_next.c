
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * current; } ;
typedef scalar_t__ SCI_ITERATOR_HANDLE_T ;
typedef TYPE_1__ SCI_BASE_ITERATOR_T ;


 int * sci_abstract_list_get_next (int *) ;

void sci_iterator_next(
   SCI_ITERATOR_HANDLE_T iterator_handle
)
{
   SCI_BASE_ITERATOR_T * iterator = (SCI_BASE_ITERATOR_T *)iterator_handle;

   if (iterator->current != ((void*)0))
   {
      iterator->current = sci_abstract_list_get_next(iterator->current);
   }
}
