
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_tree_sub {int dummy; } ;
struct cache_tree {int dummy; } ;


 struct cache_tree_sub* find_subtree (struct cache_tree*,char const*,int,int) ;
 int strlen (char const*) ;

struct cache_tree_sub *cache_tree_sub(struct cache_tree *it, const char *path)
{
 int pathlen = strlen(path);
 return find_subtree(it, path, pathlen, 1);
}
