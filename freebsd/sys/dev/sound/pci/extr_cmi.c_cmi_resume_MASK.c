#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fmt; int /*<<< orphan*/  spd; scalar_t__ dma_was_active; } ;
struct sc_info {int /*<<< orphan*/  lock; TYPE_1__ rch; TYPE_1__ pch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct sc_info *sc = FUNC8(dev);

	FUNC9(sc->lock);
	FUNC3(sc, 0);
	if (FUNC2(sc) != 0) {
		FUNC6(dev, "unable to reinitialize the card\n");
		FUNC10(sc->lock);
		return ENXIO;
	}

	if (FUNC7(dev) == -1) {
		FUNC6(dev, "unable to reinitialize the mixer\n");
		FUNC10(sc->lock);
                return ENXIO;
        }

	if (sc->pch.dma_was_active) {
		FUNC5(NULL, &sc->pch, sc->pch.spd);
		FUNC4(NULL, &sc->pch, sc->pch.fmt);
		FUNC0(sc, &sc->pch);
	}

	if (sc->rch.dma_was_active) {
		FUNC5(NULL, &sc->rch, sc->rch.spd);
		FUNC4(NULL, &sc->rch, sc->rch.fmt);
		FUNC1(sc, &sc->rch);
	}
	FUNC10(sc->lock);
	return 0;
}