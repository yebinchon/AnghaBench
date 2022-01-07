
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_array {TYPE_1__* page_list; } ;
struct TYPE_2__ {scalar_t__ page; } ;


 int PAGE_SIZE ;
 int free_page (unsigned long) ;
 int kfree (TYPE_1__*) ;

void mthca_array_cleanup(struct mthca_array *array, int nent)
{
 int i;

 for (i = 0; i < (nent * sizeof (void *) + PAGE_SIZE - 1) / PAGE_SIZE; ++i)
  free_page((unsigned long) array->page_list[i].page);

 kfree(array->page_list);
}
