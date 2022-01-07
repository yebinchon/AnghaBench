
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int dummy; } ;
struct name_entry {int oid; int path; } ;
struct cache_tree {scalar_t__ entry_count; int oid; } ;


 struct cache_tree* cache_tree_find (struct cache_tree*,int ) ;
 struct cache_tree* find_cache_tree_from_traversal (struct cache_tree*,struct traverse_info*) ;
 scalar_t__ oideq (int *,int *) ;

int cache_tree_matches_traversal(struct cache_tree *root,
     struct name_entry *ent,
     struct traverse_info *info)
{
 struct cache_tree *it;

 it = find_cache_tree_from_traversal(root, info);
 it = cache_tree_find(it, ent->path);
 if (it && it->entry_count > 0 && oideq(&ent->oid, &it->oid))
  return it->entry_count;
 return 0;
}
