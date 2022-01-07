
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int UMA_ZONE_MINBUCKET ;
 int UMA_ZONE_NUMA ;
 int kstack_cache ;
 int kstack_cache_size ;
 int kstack_import ;
 int kstack_pages ;
 int kstack_release ;
 int uma_zcache_create (char*,int,int *,int *,int *,int *,int ,int ,int *,int) ;
 int uma_zone_set_maxcache (int ,int ) ;

__attribute__((used)) static void
kstack_cache_init(void *null)
{
 kstack_cache = uma_zcache_create("kstack_cache",
     kstack_pages * PAGE_SIZE, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     kstack_import, kstack_release, ((void*)0),
     UMA_ZONE_NUMA|UMA_ZONE_MINBUCKET);
 uma_zone_set_maxcache(kstack_cache, kstack_cache_size);
}
