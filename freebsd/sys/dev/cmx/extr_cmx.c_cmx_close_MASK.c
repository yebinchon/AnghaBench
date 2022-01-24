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
struct cmx_softc {int /*<<< orphan*/  dev; scalar_t__ open; int /*<<< orphan*/  sel; int /*<<< orphan*/  ch; scalar_t__ polling; scalar_t__ dying; } ;
struct cdev {struct cmx_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MODEBITS ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct cdev *cdev, int flags, int fmt, struct thread *td)
{
	struct cmx_softc *sc = cdev->si_drv1;

	if (sc == NULL || sc->dying)
		return ENXIO;

	FUNC0(sc);
	if (!sc->open) {
		FUNC1(sc);
		return EINVAL;
	}
	if (sc->polling) {
		FUNC2(sc->dev, "disabling polling\n");
		FUNC4(&sc->ch);
		sc->polling = 0;
		FUNC1(sc);
		FUNC3(&sc->ch);
		FUNC5(&sc->sel, PZERO);
		FUNC0(sc);
	}
	sc->open = 0;
	FUNC1(sc);

	FUNC2(sc->dev, "close (flags=%b thread=%p)\n",
			flags, MODEBITS, td);
	return 0;
}