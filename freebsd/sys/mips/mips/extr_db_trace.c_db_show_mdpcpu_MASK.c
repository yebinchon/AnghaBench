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
struct pcpu {int /*<<< orphan*/  pc_asid_generation; int /*<<< orphan*/  pc_next_asid; int /*<<< orphan*/  pc_pending_ipis; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct pcpu *pc)
{

	FUNC0("ipis         = 0x%x\n", pc->pc_pending_ipis);
	FUNC0("next ASID    = %d\n", pc->pc_next_asid);
	FUNC0("GENID        = %d\n", pc->pc_asid_generation);
	return;
}