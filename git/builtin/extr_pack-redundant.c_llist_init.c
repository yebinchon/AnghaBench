
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llist {scalar_t__ size; int * back; int front; } ;


 struct llist* xmalloc (int) ;

__attribute__((used)) static inline void llist_init(struct llist **list)
{
 *list = xmalloc(sizeof(struct llist));
 (*list)->front = (*list)->back = ((void*)0);
 (*list)->size = 0;
}
