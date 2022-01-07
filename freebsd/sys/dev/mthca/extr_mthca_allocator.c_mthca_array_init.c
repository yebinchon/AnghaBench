
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_array {TYPE_1__* page_list; } ;
struct TYPE_2__ {scalar_t__ used; int * page; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 TYPE_1__* kmalloc (int,int ) ;

int mthca_array_init(struct mthca_array *array, int nent)
{
 int npage = (nent * sizeof (void *) + PAGE_SIZE - 1) / PAGE_SIZE;
 int i;

 array->page_list = kmalloc(npage * sizeof *array->page_list, GFP_KERNEL);
 if (!array->page_list)
  return -ENOMEM;

 for (i = 0; i < npage; ++i) {
  array->page_list[i].page = ((void*)0);
  array->page_list[i].used = 0;
 }

 return 0;
}
