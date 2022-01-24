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
struct bge_softc {int /*<<< orphan*/  bge_mtx; int /*<<< orphan*/ * bge_ifp; int /*<<< orphan*/ * bge_res2; int /*<<< orphan*/ * bge_res; int /*<<< orphan*/ * bge_irq; int /*<<< orphan*/ * bge_intrhand; int /*<<< orphan*/ * bge_tq; int /*<<< orphan*/  bge_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bge_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bge_softc *sc)
{
	device_t dev;

	dev = sc->bge_dev;

	if (sc->bge_tq != NULL)
		FUNC8(sc->bge_tq);

	if (sc->bge_intrhand != NULL)
		FUNC3(dev, sc->bge_irq, sc->bge_intrhand);

	if (sc->bge_irq != NULL) {
		FUNC2(dev, SYS_RES_IRQ,
		    FUNC7(sc->bge_irq), sc->bge_irq);
		FUNC6(dev);
	}

	if (sc->bge_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY,
		    FUNC7(sc->bge_res), sc->bge_res);

	if (sc->bge_res2 != NULL)
		FUNC2(dev, SYS_RES_MEMORY,
		    FUNC7(sc->bge_res2), sc->bge_res2);

	if (sc->bge_ifp != NULL)
		FUNC4(sc->bge_ifp);

	FUNC1(sc);

	if (FUNC5(&sc->bge_mtx))	/* XXX */
		FUNC0(sc);
}