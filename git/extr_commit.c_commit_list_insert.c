
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;


 struct commit_list* xmalloc (int) ;

struct commit_list *commit_list_insert(struct commit *item, struct commit_list **list_p)
{
 struct commit_list *new_list = xmalloc(sizeof(struct commit_list));
 new_list->item = item;
 new_list->next = *list_p;
 *list_p = new_list;
 return new_list;
}
