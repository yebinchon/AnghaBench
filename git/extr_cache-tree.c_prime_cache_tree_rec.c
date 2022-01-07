
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_desc {int dummy; } ;
struct TYPE_2__ {int parsed; int oid; } ;
struct tree {TYPE_1__ object; int size; int buffer; } ;
struct repository {int dummy; } ;
struct name_entry {int path; int oid; int mode; } ;
struct cache_tree_sub {struct cache_tree* cache_tree; } ;
struct cache_tree {int entry_count; int oid; } ;


 int S_ISDIR (int ) ;
 struct cache_tree* cache_tree () ;
 struct cache_tree_sub* cache_tree_sub (struct cache_tree*,int ) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 struct tree* lookup_tree (struct repository*,int *) ;
 int oidcpy (int *,int *) ;
 int parse_tree (struct tree*) ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;

__attribute__((used)) static void prime_cache_tree_rec(struct repository *r,
     struct cache_tree *it,
     struct tree *tree)
{
 struct tree_desc desc;
 struct name_entry entry;
 int cnt;

 oidcpy(&it->oid, &tree->object.oid);
 init_tree_desc(&desc, tree->buffer, tree->size);
 cnt = 0;
 while (tree_entry(&desc, &entry)) {
  if (!S_ISDIR(entry.mode))
   cnt++;
  else {
   struct cache_tree_sub *sub;
   struct tree *subtree = lookup_tree(r, &entry.oid);
   if (!subtree->object.parsed)
    parse_tree(subtree);
   sub = cache_tree_sub(it, entry.path);
   sub->cache_tree = cache_tree();
   prime_cache_tree_rec(r, sub->cache_tree, subtree);
   cnt += sub->cache_tree->entry_count;
  }
 }
 it->entry_count = cnt;
}
