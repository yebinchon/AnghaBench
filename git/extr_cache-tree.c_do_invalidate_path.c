
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cache_tree_sub {struct cache_tree* cache_tree; } ;
struct cache_tree {int entry_count; int subtree_nr; TYPE_1__** down; } ;
struct TYPE_4__ {int cache_tree; } ;


 int MOVE_ARRAY (TYPE_1__**,TYPE_1__**,int) ;
 int cache_tree_free (int *) ;
 struct cache_tree_sub* find_subtree (struct cache_tree*,char const*,int,int ) ;
 int fprintf (int ,char*,char const*) ;
 int free (TYPE_1__*) ;
 int stderr ;
 char* strchrnul (char const*,char) ;
 int subtree_pos (struct cache_tree*,char const*,int) ;

__attribute__((used)) static int do_invalidate_path(struct cache_tree *it, const char *path)
{







 const char *slash;
 int namelen;
 struct cache_tree_sub *down;





 if (!it)
  return 0;
 slash = strchrnul(path, '/');
 namelen = slash - path;
 it->entry_count = -1;
 if (!*slash) {
  int pos;
  pos = subtree_pos(it, path, namelen);
  if (0 <= pos) {
   cache_tree_free(&it->down[pos]->cache_tree);
   free(it->down[pos]);






   MOVE_ARRAY(it->down + pos, it->down + pos + 1,
       it->subtree_nr - pos - 1);
   it->subtree_nr--;
  }
  return 1;
 }
 down = find_subtree(it, path, namelen, 0);
 if (down)
  do_invalidate_path(down->cache_tree, slash + 1);
 return 1;
}
