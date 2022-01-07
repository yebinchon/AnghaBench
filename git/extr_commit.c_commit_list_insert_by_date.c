
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct commit {scalar_t__ date; } ;
struct TYPE_2__ {scalar_t__ date; } ;


 struct commit_list* commit_list_insert (struct commit*,struct commit_list**) ;

struct commit_list * commit_list_insert_by_date(struct commit *item, struct commit_list **list)
{
 struct commit_list **pp = list;
 struct commit_list *p;
 while ((p = *pp) != ((void*)0)) {
  if (p->item->date < item->date) {
   break;
  }
  pp = &p->next;
 }
 return commit_list_insert(item, pp);
}
