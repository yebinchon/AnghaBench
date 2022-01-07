
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct llist_item {struct llist_item* next; int oid; } ;
struct llist {int size; struct llist_item* back; struct llist_item* front; } ;


 int llist_item_put (struct llist_item*) ;
 int oidcmp (int ,struct object_id const*) ;

__attribute__((used)) static inline struct llist_item * llist_sorted_remove(struct llist *list, const struct object_id *oid, struct llist_item *hint)
{
 struct llist_item *prev, *l;

redo_from_start:
 l = (hint == ((void*)0)) ? list->front : hint;
 prev = ((void*)0);
 while (l) {
  const int cmp = oidcmp(l->oid, oid);
  if (cmp > 0)
   return prev;
  if (!cmp) {
   if (prev == ((void*)0)) {
    if (hint != ((void*)0) && hint != list->front) {

     hint = ((void*)0);
     goto redo_from_start;
    }
    list->front = l->next;
   } else
    prev->next = l->next;
   if (l == list->back)
    list->back = prev;
   llist_item_put(l);
   list->size--;
   return prev;
  }
  prev = l;
  l = l->next;
 }
 return prev;
}
