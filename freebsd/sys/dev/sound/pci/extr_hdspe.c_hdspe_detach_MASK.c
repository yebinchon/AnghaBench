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
struct sc_info {scalar_t__ lock; scalar_t__ cs; scalar_t__ irq; scalar_t__ dmat; scalar_t__ ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct sc_info *sc;
	int err;

	sc = FUNC5(dev);
	if (sc == NULL) {
		FUNC6(dev,"Can't detach: softc is null.\n");
		return (0);
	}

	err = FUNC4(dev);
	if (err)
		return (err);

	FUNC7(sc);

	if (sc->ih)
		FUNC3(dev, sc->irq, sc->ih);
	if (sc->dmat)
		FUNC1(sc->dmat);
	if (sc->irq)
		FUNC2(dev, SYS_RES_IRQ, 0, sc->irq);
	if (sc->cs)
		FUNC2(dev, SYS_RES_MEMORY, FUNC0(0), sc->cs);
	if (sc->lock)
		FUNC8(sc->lock);

	return (0);
}