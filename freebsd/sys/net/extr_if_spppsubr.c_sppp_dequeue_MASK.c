#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sppp {scalar_t__ pp_mode; int /*<<< orphan*/  pp_fastq; int /*<<< orphan*/  pp_cpq; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 scalar_t__ IFF_CISCO ; 
 struct sppp* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ PP_FR ; 
 TYPE_1__* FUNC2 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC3 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC4 (struct sppp*) ; 
 scalar_t__ FUNC5 (struct sppp*) ; 

struct mbuf *
FUNC6(struct ifnet *ifp)
{
	struct sppp *sp = FUNC0(ifp);
	struct mbuf *m;

	FUNC3(sp);
	/*
	 * Process only the control protocol queue until we have at
	 * least one NCP open.
	 *
	 * Do always serve all three queues in Cisco mode.
	 */
	FUNC1(&sp->pp_cpq, m);
	if (m == NULL &&
	    (FUNC5(sp) || sp->pp_mode == IFF_CISCO ||
	     sp->pp_mode == PP_FR)) {
		FUNC1(&sp->pp_fastq, m);
		if (m == NULL)
			FUNC1 (&FUNC2(sp)->if_snd, m);
	}
	FUNC4(sp);
	return m;
}