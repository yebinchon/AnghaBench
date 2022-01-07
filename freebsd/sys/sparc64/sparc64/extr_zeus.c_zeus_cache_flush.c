
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASI_FLUSH_L1I ;
 int stxa_sync (int ,int ,int ) ;

void
zeus_cache_flush(void)
{

 stxa_sync(0, ASI_FLUSH_L1I, 0);
}
