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
struct sc_info {TYPE_2__ pch; TYPE_1__ rch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PCMTRIG_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct sc_info	*sc = FUNC2(dev);

	FUNC4(sc);
	FUNC5(sc, 0);
	if (FUNC3(sc) == -1) {
		FUNC0(dev, "unable to reinitialize the card\n");
		return ENXIO;
	}

	if (FUNC1(dev) == -1) {
		FUNC0(dev, "unable to reinitialize the mixer\n");
                return ENXIO;
        }

	if (sc->rch.dma_was_active) {
		FUNC7(0, &sc->rch, PCMTRIG_START);
	}

	if (sc->pch.dma_was_active) {
		FUNC6(0, &sc->pch, PCMTRIG_START);
	}

	return 0;
}