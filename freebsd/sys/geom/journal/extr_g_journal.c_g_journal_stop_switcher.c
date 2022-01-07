
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GJ_DEBUG (int,char*) ;
 scalar_t__ GJ_SWITCHER_DIE ;
 scalar_t__ GJ_SWITCHER_DIED ;
 int MPASS (int ) ;
 int PRIBIO ;
 int * g_journal_switcher_proc ;
 scalar_t__ g_journal_switcher_state ;
 int g_topology_assert () ;
 int hz ;
 int tsleep (scalar_t__*,int ,char*,int) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
g_journal_stop_switcher(void)
{
 g_topology_assert();
 MPASS(g_journal_switcher_proc != ((void*)0));
 g_journal_switcher_state = GJ_SWITCHER_DIE;
 wakeup(&g_journal_switcher_state);
 while (g_journal_switcher_state != GJ_SWITCHER_DIED)
  tsleep(&g_journal_switcher_state, PRIBIO, "jfini:wait", hz / 5);
 GJ_DEBUG(1, "Switcher died.");
 g_journal_switcher_proc = ((void*)0);
}
