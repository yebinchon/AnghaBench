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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  M_JOURNAL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_journal_cache_mtx ; 
 size_t g_journal_cache_used ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 void* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC7(void *p, size_t size, size_t oldsize)
{
	void *np;

#ifndef GJ_MEMDEBUG
	FUNC4(&g_journal_cache_mtx);
	g_journal_cache_used -= oldsize;
	g_journal_cache_used += size;
	FUNC5(&g_journal_cache_mtx);
	np = FUNC6(p, size, M_JOURNAL, M_WAITOK);
#else
	np = gj_malloc(size, M_WAITOK);
	bcopy(p, np, MIN(oldsize, size));
	gj_free(p, oldsize);
#endif
	return (np);
}