
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct llist_item {int dummy; } ;
struct llist {int back; } ;


 struct llist_item* llist_insert (struct llist*,int ,struct object_id const*) ;

__attribute__((used)) static inline struct llist_item *llist_insert_back(struct llist *list,
         const struct object_id *oid)
{
 return llist_insert(list, list->back, oid);
}
