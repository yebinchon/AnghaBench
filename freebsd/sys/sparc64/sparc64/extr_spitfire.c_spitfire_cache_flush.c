
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_2__ {int ic_linesize; int ic_size; int dc_linesize; int dc_size; } ;


 int ASI_DCACHE_TAG ;
 int ASI_ICACHE_TAG ;
 scalar_t__ PCPU_GET (int ) ;
 TYPE_1__ cache ;
 int stxa_sync (scalar_t__,int ,int ) ;

void
spitfire_cache_flush(void)
{
 u_long addr;

 for (addr = 0; addr < PCPU_GET(cache.dc_size);
     addr += PCPU_GET(cache.dc_linesize))
  stxa_sync(addr, ASI_DCACHE_TAG, 0);
 for (addr = 0; addr < PCPU_GET(cache.ic_size);
     addr += PCPU_GET(cache.ic_linesize))
  stxa_sync(addr, ASI_ICACHE_TAG, 0);
}
