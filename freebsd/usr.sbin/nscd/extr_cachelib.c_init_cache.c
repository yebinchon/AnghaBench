
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_params {int dummy; } ;
struct cache_ {int entries_capacity; scalar_t__ entries_size; int * entries; int params; } ;


 int INITIAL_ENTRIES_CAPACITY ;
 int TRACE_IN (struct cache_* (*) (struct cache_params const*)) ;
 int TRACE_OUT (struct cache_* (*) (struct cache_params const*)) ;
 int assert (int ) ;
 void* calloc (int,int) ;
 int memcpy (int *,struct cache_params const*,int) ;

struct cache_ *
init_cache(struct cache_params const *params)
{
 struct cache_ *retval;

 TRACE_IN(init_cache);
 assert(params != ((void*)0));

 retval = calloc(1, sizeof(*retval));
 assert(retval != ((void*)0));

 assert(params != ((void*)0));
 memcpy(&retval->params, params, sizeof(struct cache_params));

 retval->entries = calloc(INITIAL_ENTRIES_CAPACITY,
  sizeof(*retval->entries));
 assert(retval->entries != ((void*)0));

 retval->entries_capacity = INITIAL_ENTRIES_CAPACITY;
 retval->entries_size = 0;

 TRACE_OUT(init_cache);
 return (retval);
}
