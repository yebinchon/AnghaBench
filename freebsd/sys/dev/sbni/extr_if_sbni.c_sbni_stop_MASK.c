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
struct sbni_softc {TYPE_1__* ifp; int /*<<< orphan*/  wch; int /*<<< orphan*/ * rx_buf_p; } ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sbni_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct sbni_softc *sc)
{
	FUNC3(sc, CSR0, 0);
	FUNC1(sc);

	if (sc->rx_buf_p) {
		FUNC2(sc->rx_buf_p);
		sc->rx_buf_p = NULL;
	}

	FUNC0(&sc->wch);
	sc->ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}