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
struct ifnet {int if_flags; } ;
struct TYPE_3__ {int an_len; int /*<<< orphan*/  an_type; } ;
struct an_softc {TYPE_1__ areq; int /*<<< orphan*/ * an_temp_keys; scalar_t__ mpi350; scalar_t__ an_gone; struct ifnet* an_ifp; } ;
struct an_ltv_key {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct an_softc*) ; 
 int /*<<< orphan*/  AN_RID_WEP_TEMP ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct an_softc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 struct an_softc* FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(device_t dev)
{
	struct an_softc		*sc;
	struct ifnet		*ifp;
	int			i;

	sc = FUNC8(dev);
	FUNC0(sc);
	ifp = sc->an_ifp;

	sc->an_gone = 0;
	FUNC4(sc);
	if (sc->mpi350)
		FUNC3(sc);
	FUNC2(sc);

	/* Recovery temporary keys */
	for (i = 0; i < 4; i++) {
		sc->areq.an_type = AN_RID_WEP_TEMP;
		sc->areq.an_len = sizeof(struct an_ltv_key);
		FUNC7(&sc->an_temp_keys[i],
		    &sc->areq, sizeof(struct an_ltv_key));
		FUNC5(sc, &sc->areq);
	}

	if (ifp->if_flags & IFF_UP)
		FUNC6(ifp);
	FUNC1(sc);

	return;
}