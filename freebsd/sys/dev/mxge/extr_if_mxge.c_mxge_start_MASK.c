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
struct TYPE_3__ {int /*<<< orphan*/  mtx; } ;
struct mxge_slice_state {TYPE_1__ tx; } ;
struct ifnet {TYPE_2__* if_softc; } ;
struct TYPE_4__ {struct mxge_slice_state* ss; } ;
typedef  TYPE_2__ mxge_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mxge_slice_state*) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp)
{
	mxge_softc_t *sc = ifp->if_softc;
	struct mxge_slice_state *ss;

	/* only use the first slice for now */
	ss = &sc->ss[0];
	FUNC0(&ss->tx.mtx);
	FUNC2(ss);
	FUNC1(&ss->tx.mtx);		
}