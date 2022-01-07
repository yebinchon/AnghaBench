
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_WAITOK ;
 void* counter_u64_alloc (int ) ;
 void* fuse_lookup_cache_hits ;
 void* fuse_lookup_cache_misses ;

void
fuse_internal_init(void)
{
 fuse_lookup_cache_misses = counter_u64_alloc(M_WAITOK);
 fuse_lookup_cache_hits = counter_u64_alloc(M_WAITOK);
}
