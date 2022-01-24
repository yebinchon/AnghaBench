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
struct TYPE_3__ {int /*<<< orphan*/  dma_was_active; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma_was_active; } ;
struct sc_info {int /*<<< orphan*/  lock; TYPE_1__ rch; TYPE_2__ pch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sc_info*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int) ; 
 struct sc_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct sc_info *sc = FUNC3(dev);

	FUNC4(sc->lock);
	sc->pch.dma_was_active = FUNC0(sc, &sc->pch);
	sc->rch.dma_was_active = FUNC1(sc, &sc->rch);
	FUNC2(sc, 3);
	FUNC5(sc->lock);
	return 0;
}