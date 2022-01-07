
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_array {TYPE_1__* page_list; } ;
struct TYPE_2__ {scalar_t__ used; int ** page; } ;


 int MTHCA_ARRAY_MASK ;
 int PAGE_SHIFT ;
 int free_page (unsigned long) ;
 int pr_debug (char*,struct mthca_array*,int,int,scalar_t__) ;

void mthca_array_clear(struct mthca_array *array, int index)
{
 int p = (index * sizeof (void *)) >> PAGE_SHIFT;

 if (--array->page_list[p].used == 0) {
  free_page((unsigned long) array->page_list[p].page);
  array->page_list[p].page = ((void*)0);
 } else
  array->page_list[p].page[index & MTHCA_ARRAY_MASK] = ((void*)0);

 if (array->page_list[p].used < 0)
  pr_debug("Array %p index %d page %d with ref count %d < 0\n",
    array, index, p, array->page_list[p].used);
}
