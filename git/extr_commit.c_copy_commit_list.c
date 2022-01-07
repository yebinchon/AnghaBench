
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {struct commit_list* next; int item; } ;


 struct commit_list** commit_list_append (int ,struct commit_list**) ;

struct commit_list *copy_commit_list(struct commit_list *list)
{
 struct commit_list *head = ((void*)0);
 struct commit_list **pp = &head;
 while (list) {
  pp = commit_list_append(list->item, pp);
  list = list->next;
 }
 return head;
}
