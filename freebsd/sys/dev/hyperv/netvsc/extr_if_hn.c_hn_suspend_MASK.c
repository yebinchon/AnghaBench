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
struct hn_softc {int hn_flags; TYPE_1__* hn_ifp; } ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int HN_FLAG_RXVF ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hn_softc*) ; 

__attribute__((used)) static void
FUNC3(struct hn_softc *sc)
{

	/* Disable polling. */
	FUNC0(sc, 0);

	/*
	 * If the non-transparent mode VF is activated, the synthetic
	 * device is receiving packets, so the data path of the
	 * synthetic device must be suspended.
	 */
	if ((sc->hn_ifp->if_drv_flags & IFF_DRV_RUNNING) ||
	    (sc->hn_flags & HN_FLAG_RXVF))
		FUNC1(sc);
	FUNC2(sc);
}