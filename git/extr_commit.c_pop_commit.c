
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;


 int free (struct commit_list*) ;

struct commit *pop_commit(struct commit_list **stack)
{
 struct commit_list *top = *stack;
 struct commit *item = top ? top->item : ((void*)0);

 if (top) {
  *stack = top->next;
  free(top);
 }
 return item;
}
