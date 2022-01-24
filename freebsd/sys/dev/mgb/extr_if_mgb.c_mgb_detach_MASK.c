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
struct mgb_softc {int /*<<< orphan*/ * pba; int /*<<< orphan*/  dev; int /*<<< orphan*/ * miibus; int /*<<< orphan*/  admin_irq; int /*<<< orphan*/  rx_irq; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mgb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mgb_softc*) ; 
 int FUNC5 (struct mgb_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(if_ctx_t ctx)
{
	struct mgb_softc *sc;
	int error;

	sc = FUNC2(ctx);

	/* XXX: Should report errors but still detach everything. */
	error = FUNC4(sc);

	/* Release IRQs */
	FUNC3(ctx, &sc->rx_irq);
	FUNC3(ctx, &sc->admin_irq);

	if (sc->miibus != NULL)
		FUNC1(sc->dev, sc->miibus);

	if (sc->pba != NULL)
		error = FUNC0(sc->dev, SYS_RES_MEMORY,
		    FUNC6(sc->pba), sc->pba);
	sc->pba = NULL;

	error = FUNC5(sc);

	return (error);
}