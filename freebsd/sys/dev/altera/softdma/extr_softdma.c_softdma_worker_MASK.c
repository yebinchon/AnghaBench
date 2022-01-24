#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ transferred; scalar_t__ error; } ;
typedef  TYPE_1__ xdma_transfer_status_t ;
struct softdma_softc {int dummy; } ;
struct softdma_channel {scalar_t__ run; int /*<<< orphan*/  mtx; int /*<<< orphan*/  xchan; struct softdma_softc* sc; } ;

/* Variables and functions */
 int hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct softdma_channel*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct softdma_channel*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	xdma_transfer_status_t status;
	struct softdma_channel *chan;
	struct softdma_softc *sc;

	chan = arg;

	sc = chan->sc;

	while (1) {
		FUNC0(&chan->mtx);

		do {
			FUNC1(chan, &chan->mtx, 0, "softdma_wait", hz / 2);
		} while (chan->run == 0);

		status.error = 0;
		status.transferred = 0;

		FUNC3(chan, &status);

		/* Finish operation */
		chan->run = 0;
		FUNC4(chan->xchan, &status);

		FUNC2(&chan->mtx);
	}

}