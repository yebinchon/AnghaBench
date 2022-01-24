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
struct xbd_softc {int /*<<< orphan*/  xbd_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  XBD_Q_BUSY ; 
 int /*<<< orphan*/  FUNC2 (struct xbd_softc*) ; 
 scalar_t__ FUNC3 (struct xbd_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct xbd_softc *sc)
{
	int mtd;

	// While there are outstanding requests
	while (FUNC3(sc, XBD_Q_BUSY) != 0) {
		FUNC1(&sc->xbd_ring, mtd);
		if (mtd) {
			/* Received request completions, update queue. */
			FUNC2(sc);
		}
		if (FUNC3(sc, XBD_Q_BUSY) != 0) {
			/*
			 * Still pending requests, wait for the disk i/o
			 * to complete.
			 */
			FUNC0();
		}
	}
}