
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_tree_sub {struct cache_tree* cache_tree; } ;
struct cache_tree {scalar_t__ entry_count; int subtree_alloc; int subtree_nr; int down; int oid; } ;
struct TYPE_2__ {unsigned int rawsz; } ;


 struct cache_tree* cache_tree () ;
 int cache_tree_free (struct cache_tree**) ;
 struct cache_tree_sub* cache_tree_sub (struct cache_tree*,char const*) ;
 int die (char*) ;
 int fprintf (int ,char*,char const*,int,...) ;
 char* oid_to_hex (int *) ;
 int oidread (int *,unsigned char const*) ;
 int stderr ;
 void* strtol (char const*,char**,int) ;
 TYPE_1__* the_hash_algo ;
 int xcalloc (int,int) ;

__attribute__((used)) static struct cache_tree *read_one(const char **buffer, unsigned long *size_p)
{
 const char *buf = *buffer;
 unsigned long size = *size_p;
 const char *cp;
 char *ep;
 struct cache_tree *it;
 int i, subtree_nr;
 const unsigned rawsz = the_hash_algo->rawsz;

 it = ((void*)0);

 while (size && *buf) {
  size--;
  buf++;
 }
 if (!size)
  goto free_return;
 buf++; size--;
 it = cache_tree();

 cp = buf;
 it->entry_count = strtol(cp, &ep, 10);
 if (cp == ep)
  goto free_return;
 cp = ep;
 subtree_nr = strtol(cp, &ep, 10);
 if (cp == ep)
  goto free_return;
 while (size && *buf && *buf != '\n') {
  size--;
  buf++;
 }
 if (!size)
  goto free_return;
 buf++; size--;
 if (0 <= it->entry_count) {
  if (size < rawsz)
   goto free_return;
  oidread(&it->oid, (const unsigned char *)buf);
  buf += rawsz;
  size -= rawsz;
 }
 it->subtree_alloc = subtree_nr + 2;
 it->down = xcalloc(it->subtree_alloc, sizeof(struct cache_tree_sub *));
 for (i = 0; i < subtree_nr; i++) {

  struct cache_tree *sub;
  struct cache_tree_sub *subtree;
  const char *name = buf;

  sub = read_one(&buf, &size);
  if (!sub)
   goto free_return;
  subtree = cache_tree_sub(it, name);
  subtree->cache_tree = sub;
 }
 if (subtree_nr != it->subtree_nr)
  die("cache-tree: internal error");
 *buffer = buf;
 *size_p = size;
 return it;

 free_return:
 cache_tree_free(&it);
 return ((void*)0);
}
