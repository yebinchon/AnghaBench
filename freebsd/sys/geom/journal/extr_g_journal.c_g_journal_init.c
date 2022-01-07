
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int EVENTHANDLER_PRI_FIRST ;
 void* EVENTHANDLER_REGISTER (int ,int ,struct g_class*,int ) ;
 int GJ_DEBUG (int ,char*) ;
 int g_journal_cache_divisor ;
 int g_journal_cache_limit ;
 int g_journal_cache_low ;
 int g_journal_cache_switch ;
 int * g_journal_event_lowmem ;
 int * g_journal_event_shutdown ;
 int g_journal_lowmem ;
 int g_journal_shutdown ;
 int shutdown_post_sync ;
 int vm_kmem_size ;
 int vm_lowmem ;

__attribute__((used)) static void
g_journal_init(struct g_class *mp)
{


 if (g_journal_cache_divisor <= 0 ||
     (vm_kmem_size / g_journal_cache_divisor == 0)) {
  g_journal_cache_divisor = 5;
 }
 if (g_journal_cache_limit > 0) {
  g_journal_cache_limit = vm_kmem_size / g_journal_cache_divisor;
  g_journal_cache_low =
      (g_journal_cache_limit / 100) * g_journal_cache_switch;
 }
 g_journal_event_shutdown = EVENTHANDLER_REGISTER(shutdown_post_sync,
     g_journal_shutdown, mp, EVENTHANDLER_PRI_FIRST);
 if (g_journal_event_shutdown == ((void*)0))
  GJ_DEBUG(0, "Warning! Cannot register shutdown event.");
 g_journal_event_lowmem = EVENTHANDLER_REGISTER(vm_lowmem,
     g_journal_lowmem, mp, EVENTHANDLER_PRI_FIRST);
 if (g_journal_event_lowmem == ((void*)0))
  GJ_DEBUG(0, "Warning! Cannot register lowmem event.");
}
