
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * free_pool; } ;
typedef TYPE_1__ SCI_ABSTRACT_LIST_T ;
typedef int SCI_ABSTRACT_ELEMENT_POOL_T ;


 int memset (TYPE_1__*,int ,int) ;

void sci_abstract_list_construct(
   SCI_ABSTRACT_LIST_T * list,
   SCI_ABSTRACT_ELEMENT_POOL_T * free_pool
)
{
   memset(list, 0, sizeof(SCI_ABSTRACT_LIST_T));
   list->free_pool = free_pool;
}
