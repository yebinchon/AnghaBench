
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct meminfo {size_t mi_size; int mi_stack; } ;


 int GJ_DEBUG (int,char*) ;
 int M_JOURNAL ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int g_journal_cache_alloc_failures ;
 scalar_t__ g_journal_cache_limit ;
 scalar_t__ g_journal_cache_low ;
 int g_journal_cache_mtx ;
 scalar_t__ g_journal_cache_used ;
 int g_journal_switcher_state ;
 int g_journal_switcher_wokenup ;
 void* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stack_save (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void *
gj_malloc(size_t size, int flags)
{
 void *p;




 mtx_lock(&g_journal_cache_mtx);
 if (g_journal_cache_limit > 0 && !g_journal_switcher_wokenup &&
     g_journal_cache_used + size > g_journal_cache_low) {
  GJ_DEBUG(1, "No cache, waking up the switcher.");
  g_journal_switcher_wokenup = 1;
  wakeup(&g_journal_switcher_state);
 }
 if ((flags & M_NOWAIT) && g_journal_cache_limit > 0 &&
     g_journal_cache_used + size > g_journal_cache_limit) {
  mtx_unlock(&g_journal_cache_mtx);
  g_journal_cache_alloc_failures++;
  return (((void*)0));
 }
 g_journal_cache_used += size;
 mtx_unlock(&g_journal_cache_mtx);
 flags &= ~M_NOWAIT;

 p = malloc(size, M_JOURNAL, flags | M_WAITOK);






 return (p);
}
