
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbase_tree_cache {struct pbase_tree_cache* tree_data; int ref; int temporary; } ;


 int free (struct pbase_tree_cache*) ;

__attribute__((used)) static void pbase_tree_put(struct pbase_tree_cache *cache)
{
 if (!cache->temporary) {
  cache->ref--;
  return;
 }
 free(cache->tree_data);
 free(cache);
}
