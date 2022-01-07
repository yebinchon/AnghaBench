
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * current; } ;
typedef scalar_t__ SCI_ITERATOR_HANDLE_T ;
typedef TYPE_1__ SCI_BASE_ITERATOR_T ;


 void* sci_abstract_list_get_object (int *) ;

void * sci_iterator_get_current(
   SCI_ITERATOR_HANDLE_T iterator_handle
)
{
   SCI_BASE_ITERATOR_T * iterator = (SCI_BASE_ITERATOR_T *)iterator_handle;

   void *current_object = ((void*)0);

   if (iterator->current != ((void*)0))
   {
      current_object = sci_abstract_list_get_object(iterator->current);
   }

   return current_object;
}
