
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int counter_u64_free (int ) ;
 int fuse_lookup_cache_hits ;
 int fuse_lookup_cache_misses ;

void
fuse_internal_destroy(void)
{
 counter_u64_free(fuse_lookup_cache_hits);
 counter_u64_free(fuse_lookup_cache_misses);
}
