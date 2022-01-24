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
struct sbni_softc {int /*<<< orphan*/  ifp; int /*<<< orphan*/  lock; scalar_t__ irq_handle; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  wch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sbni_softc*) ; 

void
FUNC8(struct sbni_softc *sc)
{

	FUNC0(sc);
	FUNC7(sc);
	FUNC1(sc);
	FUNC3(&sc->wch);
	FUNC4(sc->ifp);
	if (sc->irq_handle)
		FUNC2(sc->dev, sc->irq_res, sc->irq_handle);
	FUNC6(&sc->lock);
	FUNC5(sc->ifp);
}