
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_item {struct llist_item* next; int oid; } ;
struct llist {struct llist_item* front; } ;


 struct llist_item* llist_sorted_remove (struct llist*,int ,struct llist_item*) ;

__attribute__((used)) static void llist_sorted_difference_inplace(struct llist *A,
         struct llist *B)
{
 struct llist_item *hint, *b;

 hint = ((void*)0);
 b = B->front;

 while (b) {
  hint = llist_sorted_remove(A, b->oid, hint);
  b = b->next;
 }
}
