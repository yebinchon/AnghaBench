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
struct spigen_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
struct cdev {int /*<<< orphan*/  si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct spigen_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC4(struct cdev *cdev, int fflag, int devtype, struct thread *td)
{
	device_t dev = cdev->si_drv1;
	struct spigen_softc *sc = FUNC0(dev);

	FUNC2(&sc->sc_mtx);
	FUNC1(sc->sc_dev);
	FUNC3(&sc->sc_mtx);
	return (0);
}