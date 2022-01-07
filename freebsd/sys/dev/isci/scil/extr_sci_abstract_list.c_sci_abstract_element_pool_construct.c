
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int max_elements; struct TYPE_8__* elements; } ;
typedef TYPE_1__ SCI_ABSTRACT_ELEMENT_T ;
typedef TYPE_1__ SCI_ABSTRACT_ELEMENT_POOL_T ;


 int memset (TYPE_1__*,int ,int) ;
 int private_pool_free (TYPE_1__*,TYPE_1__*) ;

void sci_abstract_element_pool_construct(
   SCI_ABSTRACT_ELEMENT_POOL_T * pool,
   SCI_ABSTRACT_ELEMENT_T * list_elements,
   int element_count
)
{
   int index;

   memset(pool, 0, sizeof(SCI_ABSTRACT_ELEMENT_POOL_T));
   memset(list_elements, 0, sizeof(SCI_ABSTRACT_ELEMENT_T) * element_count);

   pool->elements = list_elements;
   pool->max_elements = element_count;



   for (index = element_count - 1; index >= 0; index--)
   {
      private_pool_free(pool, &(list_elements[index]));
   }
}
