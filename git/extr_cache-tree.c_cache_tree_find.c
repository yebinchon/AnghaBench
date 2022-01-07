
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree_sub {struct cache_tree* cache_tree; } ;
struct cache_tree {int dummy; } ;


 struct cache_tree_sub* find_subtree (struct cache_tree*,char const*,int,int ) ;
 char* strchrnul (char const*,char) ;

__attribute__((used)) static struct cache_tree *cache_tree_find(struct cache_tree *it, const char *path)
{
 if (!it)
  return ((void*)0);
 while (*path) {
  const char *slash;
  struct cache_tree_sub *sub;

  slash = strchrnul(path, '/');




  sub = find_subtree(it, path, slash - path, 0);
  if (!sub)
   return ((void*)0);
  it = sub->cache_tree;

  path = slash;
  while (*path == '/')
   path++;
 }
 return it;
}
