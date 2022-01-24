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
struct vtblk_softc {int /*<<< orphan*/  vtblk_dump_queue; int /*<<< orphan*/  vtblk_vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct vtblk_softc *sc)
{

	/*
	 * Spin here until all the requests in-flight at the time of the
	 * dump are completed and queued. The queued requests will be
	 * biodone'd once the dump is finished.
	 */
	while (!FUNC0(sc->vtblk_vq))
		FUNC1(sc, &sc->vtblk_dump_queue);
}