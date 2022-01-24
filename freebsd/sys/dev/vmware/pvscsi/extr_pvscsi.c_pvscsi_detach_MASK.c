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
struct pvscsi_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * irq_handler; int /*<<< orphan*/  irq_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pvscsi_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pvscsi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct pvscsi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct pvscsi_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct pvscsi_softc *sc;

	sc = FUNC1(dev);

	FUNC7(sc);
	FUNC5(sc);

	if (sc->irq_handler != NULL) {
		FUNC0(dev, sc->irq_res, sc->irq_handler);
	}

	FUNC3(&sc->lock);
	FUNC6(sc);
	FUNC4(&sc->lock);

	FUNC2(&sc->lock);

	return (0);
}