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
struct pf_fragment {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct pf_fragment* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pf_fragqueue ; 
 int /*<<< orphan*/  V_pf_frent_z ; 
 int /*<<< orphan*/  pf_fragqueue ; 
 int /*<<< orphan*/  FUNC3 (struct pf_fragment*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct pf_fragment	*frag;
	int			 goal;

	FUNC1();

	goal = FUNC4(V_pf_frent_z) * 9 / 10;
	FUNC0(("trying to free %d frag entriess\n", goal));
	while (goal < FUNC4(V_pf_frent_z)) {
		frag = FUNC2(&V_pf_fragqueue, pf_fragqueue);
		if (frag)
			FUNC3(frag);
		else
			break;
	}
}