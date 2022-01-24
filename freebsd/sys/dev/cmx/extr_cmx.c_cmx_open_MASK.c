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
struct cmx_softc {int open; int /*<<< orphan*/  dev; scalar_t__ dying; } ;
struct cdev {struct cmx_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct thread*) ; 
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  MODEBITS ; 

__attribute__((used)) static int
FUNC3(struct cdev *cdev, int flags, int fmt, struct thread *td)
{
	struct cmx_softc *sc = cdev->si_drv1;

	if (sc == NULL || sc->dying)
		return ENXIO;

	FUNC0(sc);
	if (sc->open) {
		FUNC1(sc);
		return EBUSY;
	}
	sc->open = 1;
	FUNC1(sc);

	FUNC2(sc->dev, "open (flags=%b thread=%p)\n",
			flags, MODEBITS, td);
	return 0;
}