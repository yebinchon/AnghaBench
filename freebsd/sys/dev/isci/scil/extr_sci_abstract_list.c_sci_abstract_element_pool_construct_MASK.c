#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int max_elements; struct TYPE_8__* elements; } ;
typedef  TYPE_1__ SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_1__ SCI_ABSTRACT_ELEMENT_POOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 

void FUNC2(
   SCI_ABSTRACT_ELEMENT_POOL_T * pool,
   SCI_ABSTRACT_ELEMENT_T      * list_elements,
   int                           element_count
)
{
   int index;

   FUNC0(pool, 0, sizeof(SCI_ABSTRACT_ELEMENT_POOL_T));
   FUNC0(list_elements, 0, sizeof(SCI_ABSTRACT_ELEMENT_T) * element_count);

   pool->elements     = list_elements;
   pool->max_elements = element_count;

   // Loop through all of the elements in the array and push them onto the
   // pool's free list.
   for (index = element_count - 1; index >= 0; index--)
   {
      FUNC1(pool, &(list_elements[index]));
   }
}