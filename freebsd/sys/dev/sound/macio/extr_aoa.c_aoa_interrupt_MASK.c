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
struct aoa_softc {struct aoa_dma* sc_intrp; } ;
struct aoa_dma {int slot; int slots; int /*<<< orphan*/  mutex; int /*<<< orphan*/  pcm; int /*<<< orphan*/  channel; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void 
FUNC5(void *xsc)
{
	struct aoa_softc	*sc = xsc;
	struct aoa_dma		*dma;

	if (!(dma = sc->sc_intrp) || !dma->running)
		return;

	FUNC3(&dma->mutex);

	while (FUNC2(dma->channel, dma->slot)) {

		FUNC1(dma->channel, dma->slot);
		dma->slot = (dma->slot + 1) % dma->slots;

		FUNC4(&dma->mutex);
		FUNC0(dma->pcm);
		FUNC3(&dma->mutex);
	}

	FUNC4(&dma->mutex);
}