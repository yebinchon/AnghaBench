
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist_item {struct llist_item* next; } ;


 int ALLOC_ARRAY (struct llist_item*,int) ;
 int BLKSIZE ;
 struct llist_item* free_nodes ;
 int llist_item_put (struct llist_item*) ;

__attribute__((used)) static inline struct llist_item *llist_item_get(void)
{
 struct llist_item *new_item;
 if ( free_nodes ) {
  new_item = free_nodes;
  free_nodes = free_nodes->next;
 } else {
  int i = 1;
  ALLOC_ARRAY(new_item, BLKSIZE);
  for (; i < BLKSIZE; i++)
   llist_item_put(&new_item[i]);
 }
 return new_item;
}
