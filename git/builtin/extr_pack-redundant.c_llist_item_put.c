
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_item {struct llist_item* next; } ;


 struct llist_item* free_nodes ;

__attribute__((used)) static inline void llist_item_put(struct llist_item *item)
{
 item->next = free_nodes;
 free_nodes = item;
}
