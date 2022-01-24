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
struct cmx_softc {int dying; int /*<<< orphan*/  cdev; int /*<<< orphan*/  sel; int /*<<< orphan*/  ch; scalar_t__ polling; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct cmx_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cmx_softc*) ; 

int
FUNC10(device_t dev)
{
	struct cmx_softc *sc = FUNC7(dev);

	FUNC2(dev, "called\n");

	sc->dying = 1;

	FUNC0(sc);
	if (sc->polling) {
		FUNC2(sc->dev, "disabling polling\n");
		FUNC4(&sc->ch);
		sc->polling = 0;
		FUNC1(sc);
		FUNC3(&sc->ch);
		FUNC8(&sc->sel, PZERO);
	} else {
		FUNC1(sc);
	}

	FUNC9(sc);
	FUNC6(sc->cdev);

	FUNC2(dev, "releasing resources\n");
	FUNC5(dev);
	return 0;
}