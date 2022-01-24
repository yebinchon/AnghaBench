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
struct pf_frent {int /*<<< orphan*/  fe_m; } ;
struct pf_fragment {int /*<<< orphan*/  fr_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct pf_frent* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pf_frent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pf_frent_z ; 
 int /*<<< orphan*/  fr_next ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pf_fragment*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pf_frent*) ; 

__attribute__((used)) static void
FUNC6(struct pf_fragment *frag)
{
	struct pf_frent		*frent;

	FUNC0();

	/* Free all fragments */
	for (frent = FUNC1(&frag->fr_queue); frent;
	    frent = FUNC1(&frag->fr_queue)) {
		FUNC2(&frag->fr_queue, frent, fr_next);

		FUNC3(frent->fe_m);
		FUNC5(V_pf_frent_z, frent);
	}

	FUNC4(frag);
}