#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dma_active; int /*<<< orphan*/  dma_was_active; } ;
struct sc_info {TYPE_1__ pch; TYPE_1__ rch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCMTRIG_ABORT ; 
 struct sc_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct sc_info	*sc = FUNC0(dev);

	sc->rch.dma_was_active = sc->rch.dma_active;
	FUNC3(NULL, &sc->rch, PCMTRIG_ABORT);

	sc->pch.dma_was_active = sc->pch.dma_active;
	FUNC3(NULL, &sc->pch, PCMTRIG_ABORT);

	FUNC1(sc);
	FUNC2(sc, 3);

	return 0;
}