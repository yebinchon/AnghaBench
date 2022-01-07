
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct llist_item {struct llist_item* next; int oid; } ;
struct llist {struct llist_item* front; } ;


 struct llist_item* llist_insert (struct llist*,struct llist_item*,struct object_id const*) ;
 struct llist_item* llist_insert_back (struct llist*,struct object_id const*) ;
 int oidcmp (int ,struct object_id const*) ;

__attribute__((used)) static inline struct llist_item *llist_insert_sorted_unique(struct llist *list,
   const struct object_id *oid, struct llist_item *hint)
{
 struct llist_item *prev = ((void*)0), *l;

 l = (hint == ((void*)0)) ? list->front : hint;
 while (l) {
  int cmp = oidcmp(l->oid, oid);
  if (cmp > 0) {
   return llist_insert(list, prev, oid);
  }
  if (!cmp) {
   return l;
  }
  prev = l;
  l = l->next;
 }

 return llist_insert_back(list, oid);
}
