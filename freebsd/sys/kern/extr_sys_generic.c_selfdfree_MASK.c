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
struct seltd {int /*<<< orphan*/  st_selq; } ;
struct selfd {int /*<<< orphan*/  sf_refs; int /*<<< orphan*/  sf_mtx; TYPE_1__* sf_si; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_tdlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct selfd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct selfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selfd ; 
 int /*<<< orphan*/  selfd_zone ; 
 int /*<<< orphan*/  sf_link ; 
 int /*<<< orphan*/  sf_threads ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct selfd*) ; 

__attribute__((used)) static void
FUNC6(struct seltd *stp, struct selfd *sfp)
{
	FUNC0(&stp->st_selq, sfp, selfd, sf_link);
	if (sfp->sf_si != NULL) {
		FUNC2(sfp->sf_mtx);
		if (sfp->sf_si != NULL) {
			FUNC1(&sfp->sf_si->si_tdlist, sfp, sf_threads);
			FUNC4(&sfp->sf_refs);
		}
		FUNC3(sfp->sf_mtx);
	}
	if (FUNC4(&sfp->sf_refs))
		FUNC5(selfd_zone, sfp);
}