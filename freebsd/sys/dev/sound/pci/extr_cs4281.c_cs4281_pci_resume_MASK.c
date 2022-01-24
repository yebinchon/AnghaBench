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
struct TYPE_5__ {int /*<<< orphan*/  dma_active; int /*<<< orphan*/  fmt; int /*<<< orphan*/  blksz; int /*<<< orphan*/  spd; } ;
struct sc_info {TYPE_1__ pch; TYPE_1__ rch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
    struct sc_info *sc;

    sc = FUNC8(dev);

    /* power up */
    FUNC2(sc, 0);

    /* initialize chip */
    if (FUNC1(sc) == -1) {
        FUNC6(dev, "unable to reinitialize the card\n");
        return ENXIO;
    }

    /* restore mixer state */
    if (FUNC7(dev) == -1) {
	FUNC6(dev, "unable to reinitialize the mixer\n");
	return ENXIO;
    }

    /* restore chip state */
    FUNC5(NULL, &sc->rch, sc->rch.spd);
    FUNC3(NULL, &sc->rch, sc->rch.blksz);
    FUNC4(NULL, &sc->rch, sc->rch.fmt);
    FUNC0(&sc->rch, sc->rch.dma_active);

    FUNC5(NULL, &sc->pch, sc->pch.spd);
    FUNC3(NULL, &sc->pch, sc->pch.blksz);
    FUNC4(NULL, &sc->pch, sc->pch.fmt);
    FUNC0(&sc->pch, sc->pch.dma_active);

    return 0;
}