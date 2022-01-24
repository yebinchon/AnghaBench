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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static	int
FUNC3(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct pps_softc *sc = dev->si_drv1;

	/*
	 * Un-busy on last close. We rely on the vfs counting stuff to only call
	 * this routine on last-close, so we don't need any open-count logic.
	 */
	FUNC1(&sc->pps_mtx);
	FUNC0(sc->dev);
	FUNC2(&sc->pps_mtx);

	return 0;
}