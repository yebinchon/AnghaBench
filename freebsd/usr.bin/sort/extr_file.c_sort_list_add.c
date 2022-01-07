
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list_item {int dummy; } ;
struct sort_list {size_t count; size_t size; size_t memsize; int * list; } ;
struct bwstring {int dummy; } ;


 int sort_list_item_alloc () ;
 int sort_list_item_set (int ,struct bwstring*) ;
 scalar_t__ sort_list_item_size (int ) ;
 int * sort_realloc (int *,int) ;

void
sort_list_add(struct sort_list *l, struct bwstring *str)
{

 if (l && str) {
  size_t indx = l->count;

  if ((l->list == ((void*)0)) || (indx >= l->size)) {
   size_t newsize = (l->size + 1) + 1024;

   l->list = sort_realloc(l->list,
       sizeof(struct sort_list_item*) * newsize);
   l->memsize += (newsize - l->size) *
       sizeof(struct sort_list_item*);
   l->size = newsize;
  }
  l->list[indx] = sort_list_item_alloc();
  sort_list_item_set(l->list[indx], str);
  l->memsize += sort_list_item_size(l->list[indx]);
  l->count += 1;
 }
}
