
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree {int entry_count; } ;


 struct cache_tree* xcalloc (int,int) ;

struct cache_tree *cache_tree(void)
{
 struct cache_tree *it = xcalloc(1, sizeof(struct cache_tree));
 it->entry_count = -1;
 return it;
}
