
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_ {size_t entries_size; struct cache_* entries; } ;


 int TRACE_IN (void (*) (struct cache_*)) ;
 int TRACE_OUT (void (*) (struct cache_*)) ;
 int assert (int ) ;
 int destroy_cache_entry (struct cache_) ;
 int free (struct cache_*) ;

void
destroy_cache(struct cache_ *the_cache)
{

 TRACE_IN(destroy_cache);
 assert(the_cache != ((void*)0));

 if (the_cache->entries != ((void*)0)) {
  size_t i;
  for (i = 0; i < the_cache->entries_size; ++i)
   destroy_cache_entry(the_cache->entries[i]);

  free(the_cache->entries);
 }

 free(the_cache);
 TRACE_OUT(destroy_cache);
}
