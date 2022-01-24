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
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_journal_cache_mtx ; 
 size_t g_journal_cache_used ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void *p, size_t size)
{
#ifdef GJ_MEMDEBUG
	struct meminfo *mi;
#endif

	FUNC0(p != NULL, ("p=NULL"));
	FUNC0(size > 0, ("size=0"));
	FUNC3(&g_journal_cache_mtx);
	FUNC0(g_journal_cache_used >= size, ("Freeing too much?"));
	g_journal_cache_used -= size;
	FUNC4(&g_journal_cache_mtx);
#ifdef GJ_MEMDEBUG
	mi = p = (void *)((u_char *)p - sizeof(*mi));
	if (mi->mi_size != size) {
		printf("GJOURNAL: Size mismatch! %zu != %zu\n", size,
		    mi->mi_size);
		printf("GJOURNAL: Alloc backtrace:\n");
		stack_print(&mi->mi_stack);
		printf("GJOURNAL: Free backtrace:\n");
		kdb_backtrace();
	}
#endif
	FUNC1(p, M_JOURNAL);
}