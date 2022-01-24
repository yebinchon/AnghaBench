#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct meminfo {size_t mi_size; int /*<<< orphan*/  mi_stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_JOURNAL ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  g_journal_cache_alloc_failures ; 
 scalar_t__ g_journal_cache_limit ; 
 scalar_t__ g_journal_cache_low ; 
 int /*<<< orphan*/  g_journal_cache_mtx ; 
 scalar_t__ g_journal_cache_used ; 
 int /*<<< orphan*/  g_journal_switcher_state ; 
 int g_journal_switcher_wokenup ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC6(size_t size, int flags)
{
	void *p;
#ifdef GJ_MEMDEBUG
	struct meminfo *mi;
#endif

	FUNC2(&g_journal_cache_mtx);
	if (g_journal_cache_limit > 0 && !g_journal_switcher_wokenup &&
	    g_journal_cache_used + size > g_journal_cache_low) {
		FUNC0(1, "No cache, waking up the switcher.");
		g_journal_switcher_wokenup = 1;
		FUNC5(&g_journal_switcher_state);
	}
	if ((flags & M_NOWAIT) && g_journal_cache_limit > 0 &&
	    g_journal_cache_used + size > g_journal_cache_limit) {
		FUNC3(&g_journal_cache_mtx);
		g_journal_cache_alloc_failures++;
		return (NULL);
	}
	g_journal_cache_used += size;
	FUNC3(&g_journal_cache_mtx);
	flags &= ~M_NOWAIT;
#ifndef GJ_MEMDEBUG
	p = FUNC1(size, M_JOURNAL, flags | M_WAITOK);
#else
	mi = malloc(sizeof(*mi) + size, M_JOURNAL, flags | M_WAITOK);
	p = (u_char *)mi + sizeof(*mi);
	mi->mi_size = size;
	stack_save(&mi->mi_stack);
#endif
	return (p);
}