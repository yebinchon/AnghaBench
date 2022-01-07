
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spdcache_entry {int dummy; } ;


 int LIST_EMPTY (int *) ;
 struct spdcache_entry* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct spdcache_entry*,int ) ;
 int SPDCACHE_LOCK (int) ;
 int SPDCACHE_UNLOCK (int) ;
 int V_spdcachehash_mask ;
 int * V_spdcachehashtbl ;
 int chain ;
 int spdcache_entry_free (struct spdcache_entry*) ;

void
spdcache_clear(void)
{
 struct spdcache_entry *entry;
 int i;

 for (i = 0; i < V_spdcachehash_mask + 1; ++i) {
  SPDCACHE_LOCK(i);
  while (!LIST_EMPTY(&V_spdcachehashtbl[i])) {
   entry = LIST_FIRST(&V_spdcachehashtbl[i]);
   LIST_REMOVE(entry, chain);
   spdcache_entry_free(entry);
  }
  SPDCACHE_UNLOCK(i);
 }
}
