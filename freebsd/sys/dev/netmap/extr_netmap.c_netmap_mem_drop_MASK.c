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
struct netmap_adapter {int /*<<< orphan*/ * nm_mem_prev; int /*<<< orphan*/ * nm_mem; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct netmap_adapter *na)
{
	int last = FUNC0(na->nm_mem, na);
	/* if the native allocator had been overrided on regif,
	 * restore it now and drop the temporary one
	 */
	if (last && na->nm_mem_prev) {
		FUNC1(na->nm_mem);
		na->nm_mem = na->nm_mem_prev;
		na->nm_mem_prev = NULL;
	}
}