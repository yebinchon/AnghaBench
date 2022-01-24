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
struct mge_softc {int mge_intr_cnt; int /*<<< orphan*/  transmit_lock; int /*<<< orphan*/  receive_lock; int /*<<< orphan*/ * res; scalar_t__ ifp; int /*<<< orphan*/ * ih_cookie; int /*<<< orphan*/  wd_callout; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mge_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct mge_softc*) ; 
 TYPE_1__* mge_intrs ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  res_spec ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sx_smi ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct mge_softc *sc;
	int error,i;

	sc = FUNC3(dev);

	/* Stop controller and free TX queue */
	if (sc->ifp)
		FUNC9(dev);

	/* Wait for stopping ticks */
        FUNC2(&sc->wd_callout);

	/* Stop and release all interrupts */
	for (i = 0; i < sc->mge_intr_cnt; ++i) {
		if (!sc->ih_cookie[i])
			continue;

		error = FUNC1(dev, sc->res[1 + i],
		    sc->ih_cookie[i]);
		if (error)
			FUNC5(dev, "could not release %s\n",
			    mge_intrs[(sc->mge_intr_cnt == 1 ? 0 : i + 1)].description);
	}

	/* Detach network interface */
	if (sc->ifp) {
		FUNC6(sc->ifp);
		FUNC7(sc->ifp);
	}

	/* Free DMA resources */
	FUNC8(sc);

	/* Free IO memory handler */
	FUNC0(dev, res_spec, sc->res);

	/* Destroy mutexes */
	FUNC10(&sc->receive_lock);
	FUNC10(&sc->transmit_lock);

	if (FUNC4(dev) == 0)
		FUNC11(&sx_smi);

	return (0);
}