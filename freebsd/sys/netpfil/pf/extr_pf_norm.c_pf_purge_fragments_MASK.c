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
typedef  scalar_t__ uint32_t ;
struct pf_fragment {scalar_t__ fr_timeout; int /*<<< orphan*/  fr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct pf_fragment* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pf_fragqueue ; 
 int /*<<< orphan*/  pf_fragqueue ; 
 int /*<<< orphan*/  FUNC4 (struct pf_fragment*) ; 

void
FUNC5(uint32_t expire)
{
	struct pf_fragment	*frag;

	FUNC1();
	while ((frag = FUNC3(&V_pf_fragqueue, pf_fragqueue)) != NULL) {
		if (frag->fr_timeout > expire)
			break;

		FUNC0(("expiring %d(%p)\n", frag->fr_id, frag));
		FUNC4(frag);
	}

	FUNC2();
}