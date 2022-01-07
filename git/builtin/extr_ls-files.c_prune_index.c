
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {unsigned int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int name; } ;


 int MOVE_ARRAY (struct cache_entry**,struct cache_entry**,unsigned int) ;
 int index_name_pos (struct index_state*,char const*,size_t) ;
 int strncmp (int ,char const*,size_t) ;

__attribute__((used)) static void prune_index(struct index_state *istate,
   const char *prefix, size_t prefixlen)
{
 int pos;
 unsigned int first, last;

 if (!prefix || !istate->cache_nr)
  return;
 pos = index_name_pos(istate, prefix, prefixlen);
 if (pos < 0)
  pos = -pos-1;
 first = pos;
 last = istate->cache_nr;
 while (last > first) {
  int next = first + ((last - first) >> 1);
  const struct cache_entry *ce = istate->cache[next];
  if (!strncmp(ce->name, prefix, prefixlen)) {
   first = next+1;
   continue;
  }
  last = next;
 }
 MOVE_ARRAY(istate->cache, istate->cache + pos, last - pos);
 istate->cache_nr = last - pos;
}
