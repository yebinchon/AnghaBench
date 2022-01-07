
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {struct name* n_blink; struct name* n_flink; } ;



struct name *
put(struct name *list, struct name *node)
{
 node->n_flink = list;
 node->n_blink = ((void*)0);
 if (list != ((void*)0))
  list->n_blink = node;
 return (node);
}
