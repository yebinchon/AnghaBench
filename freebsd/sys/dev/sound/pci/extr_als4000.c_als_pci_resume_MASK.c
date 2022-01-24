#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dma_was_active; } ;
struct TYPE_3__ {scalar_t__ dma_was_active; } ;
struct sc_info {int /*<<< orphan*/  lock; TYPE_2__ rch; TYPE_1__ pch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct sc_info *sc = FUNC5(dev);


	FUNC6(sc->lock);
	if (FUNC1(sc) != 0) {
		FUNC3(dev, "unable to reinitialize the card\n");
		FUNC7(sc->lock);
		return ENXIO;
	}

	if (FUNC4(dev) != 0) {
		FUNC3(dev, "unable to reinitialize the mixer\n");
		FUNC7(sc->lock);
		return ENXIO;
	}

	if (sc->pch.dma_was_active) {
		FUNC2(&sc->pch);
	}

	if (sc->rch.dma_was_active) {
		FUNC0(&sc->rch);
	}
	FUNC7(sc->lock);

	return 0;
}