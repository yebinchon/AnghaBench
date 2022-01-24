#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  head; } ;
struct TYPE_3__ {scalar_t__ sy_auevent; } ;

/* Variables and functions */
 scalar_t__ AUE_NULL ; 
 int EVCLASSMAP_HASH_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SYS_MAXSYSCALL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* evclass_hash ; 
 TYPE_1__* sysent ; 

void
FUNC3(void)
{
	int i;

	FUNC0();
	for (i = 0; i < EVCLASSMAP_HASH_TABLE_SIZE; i++)
		FUNC1(&evclass_hash[i].head);

	/*
	 * Set up the initial event to class mapping for system calls.
	 *
	 * XXXRW: Really, this should walk all possible audit events, not all
	 * native ABI system calls, as there may be audit events reachable
	 * only through non-native system calls.  It also seems a shame to
	 * frob the mutex this early.
	 */
	for (i = 0; i < SYS_MAXSYSCALL; i++) {
		if (sysent[i].sy_auevent != AUE_NULL)
			FUNC2(sysent[i].sy_auevent, 0);
	}
}