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
struct g_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * g_journal_event_lowmem ; 
 int /*<<< orphan*/ * g_journal_event_shutdown ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  shutdown_post_sync ; 
 int /*<<< orphan*/  vm_lowmem ; 

__attribute__((used)) static void
FUNC2(struct g_class *mp)
{

	if (g_journal_event_shutdown != NULL) {
		FUNC0(shutdown_post_sync,
		    g_journal_event_shutdown);
	}
	if (g_journal_event_lowmem != NULL)
		FUNC0(vm_lowmem, g_journal_event_lowmem);
	FUNC1();
}