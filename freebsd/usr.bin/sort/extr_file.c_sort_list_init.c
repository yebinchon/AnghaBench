
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_list {int memsize; int * list; scalar_t__ size; scalar_t__ count; } ;



void
sort_list_init(struct sort_list *l)
{

 if (l) {
  l->count = 0;
  l->size = 0;
  l->memsize = sizeof(struct sort_list);
  l->list = ((void*)0);
 }
}
