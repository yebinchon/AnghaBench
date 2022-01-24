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
struct gv_softc {int /*<<< orphan*/  bqueue_mtx; int /*<<< orphan*/  bqueue_down; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gv_softc*) ; 

__attribute__((used)) static void
FUNC5(struct gv_softc *sc, struct bio *bp)
{

	FUNC0(sc != NULL, ("NULL sc"));
	FUNC0(bp != NULL, ("NULL bp"));
	FUNC2(&sc->bqueue_mtx);
	FUNC1(sc->bqueue_down, bp);
	FUNC4(sc);
	FUNC3(&sc->bqueue_mtx);
}