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
typedef  int /*<<< orphan*/  uint8_t ;
struct thread {int dummy; } ;
struct cmx_softc {int polling; int /*<<< orphan*/  dev; int /*<<< orphan*/  ch; int /*<<< orphan*/  sel; scalar_t__ dying; } ;
struct cdev {struct cmx_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSRBITS ; 
 int /*<<< orphan*/  BSR_BULK_IN_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int ENXIO ; 
 int /*<<< orphan*/  POLLBITS ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  POLL_TICKS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmx_softc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cmx_tick ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct cdev *cdev, int events, struct thread *td)
{
	struct cmx_softc *sc = cdev->si_drv1;
	int revents = 0;
	uint8_t bsr = 0;

	if (sc == NULL || sc->dying)
		return ENXIO;

	bsr = FUNC4(sc);
	FUNC2(sc->dev, "called (events=%b BSR=%b)\n",
			events, POLLBITS, bsr, BSRBITS);

	revents = events & (POLLOUT | POLLWRNORM);
	if (events & (POLLIN | POLLRDNORM)) {
		if (FUNC5(bsr, BSR_BULK_IN_FULL, 1)) {
			revents |= events & (POLLIN | POLLRDNORM);
		} else {
			FUNC6(td, &sc->sel);
			FUNC0(sc);
			if (!sc->polling) {
				FUNC2(sc->dev, "enabling polling\n");
				sc->polling = 1;
				FUNC3(&sc->ch, POLL_TICKS,
						cmx_tick, sc);
			} else {
				FUNC2(sc->dev, "already polling\n");
			}
			FUNC1(sc);
		}
	}

	FUNC2(sc->dev, "success (revents=%b)\n", revents, POLLBITS);

	return revents;
}