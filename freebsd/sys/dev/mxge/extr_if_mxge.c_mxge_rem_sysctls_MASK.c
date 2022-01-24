#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mxge_slice_state {int /*<<< orphan*/ * sysctl_tree; int /*<<< orphan*/  sysctl_ctx; } ;
struct TYPE_3__ {int num_slices; int /*<<< orphan*/ * slice_sysctl_tree; int /*<<< orphan*/  slice_sysctl_ctx; struct mxge_slice_state* ss; } ;
typedef  TYPE_1__ mxge_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(mxge_softc_t *sc)
{
	struct mxge_slice_state *ss;
	int slice;

	if (sc->slice_sysctl_tree == NULL)
		return;

	for (slice = 0; slice < sc->num_slices; slice++) {
		ss = &sc->ss[slice];
		if (ss == NULL || ss->sysctl_tree == NULL)
			continue;
		FUNC0(&ss->sysctl_ctx);
		ss->sysctl_tree = NULL;
	}
	FUNC0(&sc->slice_sysctl_ctx);
	sc->slice_sysctl_tree = NULL;
}