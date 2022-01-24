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
struct lacp_softc {int /*<<< orphan*/  lsc_suppress_distributing; TYPE_2__* lsc_softc; } ;
struct TYPE_4__ {TYPE_1__* sc_ifp; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *vp)
{
	struct lacp_softc *lsc = vp;

	FUNC2(lsc);

	FUNC1(lsc->lsc_softc->sc_ifp->if_vnet);
	FUNC3(NULL);
	FUNC0();

	lsc->lsc_suppress_distributing = FALSE;
}