
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * list; } ;
typedef scalar_t__ SCI_ITERATOR_HANDLE_T ;
typedef TYPE_1__ SCI_BASE_ITERATOR_T ;
typedef int SCI_ABSTRACT_LIST_T ;


 int memset (TYPE_1__*,int ,int) ;
 int sci_iterator_first (TYPE_1__*) ;

void sci_base_iterator_construct(
   SCI_ITERATOR_HANDLE_T iterator_handle,
   SCI_ABSTRACT_LIST_T * list
)
{
    SCI_BASE_ITERATOR_T * iterator = (SCI_BASE_ITERATOR_T *) iterator_handle;

    memset(iterator, 0, sizeof(SCI_BASE_ITERATOR_T));
    iterator->list = list;
    sci_iterator_first(iterator);
}
