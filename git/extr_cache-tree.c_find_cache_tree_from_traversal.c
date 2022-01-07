
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int name; struct traverse_info* prev; } ;
struct cache_tree {int dummy; } ;


 struct cache_tree* cache_tree_find (struct cache_tree*,int ) ;

__attribute__((used)) static struct cache_tree *find_cache_tree_from_traversal(struct cache_tree *root,
        struct traverse_info *info)
{
 struct cache_tree *our_parent;

 if (!info->prev)
  return root;
 our_parent = find_cache_tree_from_traversal(root, info->prev);
 return cache_tree_find(our_parent, info->name);
}
