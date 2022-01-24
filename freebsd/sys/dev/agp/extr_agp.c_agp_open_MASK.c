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
struct cdev {int /*<<< orphan*/  si_drv1; } ;
struct agp_softc {int as_isopen; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct agp_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct cdev *kdev, int oflags, int devtype, struct thread *td)
{
	device_t dev = kdev->si_drv1;
	struct agp_softc *sc = FUNC1(dev);

	if (!sc->as_isopen) {
		sc->as_isopen = 1;
		FUNC0(dev);
	}

	return 0;
}