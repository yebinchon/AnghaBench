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
struct bfe_softc {int /*<<< orphan*/ * bfe_ifp; int /*<<< orphan*/ * bfe_res; int /*<<< orphan*/  bfe_dev; int /*<<< orphan*/ * bfe_irq; int /*<<< orphan*/ * bfe_intrhand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bfe_softc *sc)
{

	if (sc->bfe_intrhand != NULL)
		FUNC2(sc->bfe_dev, sc->bfe_irq, sc->bfe_intrhand);

	if (sc->bfe_irq != NULL)
		FUNC1(sc->bfe_dev, SYS_RES_IRQ, 0, sc->bfe_irq);

	if (sc->bfe_res != NULL)
		FUNC1(sc->bfe_dev, SYS_RES_MEMORY, FUNC0(0),
		    sc->bfe_res);

	if (sc->bfe_ifp != NULL)
		FUNC3(sc->bfe_ifp);
}