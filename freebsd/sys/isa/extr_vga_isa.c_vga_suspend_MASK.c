#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * pal_buf; int /*<<< orphan*/  adp; int /*<<< orphan*/ * state_buf; } ;
typedef  TYPE_1__ vga_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ bootverbose ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	vga_softc_t *sc;
	int nbytes;

	sc = FUNC0(dev);

	/* Save the video state across the suspend. */
	if (sc->state_buf != NULL)
		goto save_palette;
	nbytes = FUNC5(sc->adp, NULL, 0);
	if (nbytes <= 0)
		goto save_palette;
	sc->state_buf = FUNC3(nbytes, M_TEMP, M_NOWAIT);
	if (sc->state_buf == NULL)
		goto save_palette;
	if (bootverbose)
		FUNC1(dev, "saving %d bytes of video state\n", nbytes);
	if (FUNC5(sc->adp, sc->state_buf, nbytes) != 0) {
		FUNC1(dev, "failed to save state (nbytes=%d)\n",
		    nbytes);
		FUNC2(sc->state_buf, M_TEMP);
		sc->state_buf = NULL;
	}

save_palette:
	/* Save the color palette across the suspend. */
	if (sc->pal_buf != NULL)
		return;
	sc->pal_buf = FUNC3(256 * 3, M_TEMP, M_NOWAIT);
	if (sc->pal_buf == NULL)
		return;
	if (bootverbose)
		FUNC1(dev, "saving color palette\n");
	if (FUNC4(sc->adp, sc->pal_buf) != 0) {
		FUNC1(dev, "failed to save palette\n");
		FUNC2(sc->pal_buf, M_TEMP);
		sc->pal_buf = NULL;
	}
}