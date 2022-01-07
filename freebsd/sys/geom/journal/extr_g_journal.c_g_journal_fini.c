
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int * g_journal_event_lowmem ;
 int * g_journal_event_shutdown ;
 int g_journal_stop_switcher () ;
 int shutdown_post_sync ;
 int vm_lowmem ;

__attribute__((used)) static void
g_journal_fini(struct g_class *mp)
{

 if (g_journal_event_shutdown != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(shutdown_post_sync,
      g_journal_event_shutdown);
 }
 if (g_journal_event_lowmem != ((void*)0))
  EVENTHANDLER_DEREGISTER(vm_lowmem, g_journal_event_lowmem);
 g_journal_stop_switcher();
}
