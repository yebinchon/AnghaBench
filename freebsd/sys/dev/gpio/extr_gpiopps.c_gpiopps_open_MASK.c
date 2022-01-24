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
struct thread {int dummy; } ;
struct pps_softc {int /*<<< orphan*/  pps_mtx; int /*<<< orphan*/  dev; } ;
struct cdev {struct pps_softc* si_drv1; } ;

/* Variables and functions */
 scalar_t__ DS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct pps_softc *sc = dev->si_drv1;

	/* We can't be unloaded while open, so mark ourselves BUSY. */
	FUNC2(&sc->pps_mtx);
	if (FUNC1(sc->dev) < DS_BUSY) {
		FUNC0(sc->dev);
	}
	FUNC3(&sc->pps_mtx);

	return 0;
}