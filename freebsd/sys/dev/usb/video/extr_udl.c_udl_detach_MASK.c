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
struct udl_softc {int sc_gone; int /*<<< orphan*/  sc_fb_copy; int /*<<< orphan*/  sc_fb_size; int /*<<< orphan*/  sc_fb_addr; int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/  sc_xfer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_USB_DL ; 
 int /*<<< orphan*/  FUNC0 (struct udl_softc*) ; 
 int /*<<< orphan*/  UDL_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC1 (struct udl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct udl_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct udl_softc *sc = FUNC6(dev);

	/* delete all child devices */
	FUNC5(dev);

	FUNC0(sc);
	sc->sc_gone = 1;
	FUNC3(&sc->sc_callout);
	FUNC1(sc);

	FUNC10(sc->sc_xfer, UDL_N_TRANSFER);

	FUNC2(&sc->sc_callout);

	FUNC8(&sc->sc_mtx);
	FUNC4(&sc->sc_cv);

	/* put main framebuffer into a recycle list, if any */
	FUNC9(sc->sc_fb_addr, sc->sc_fb_size);

	/* free shadow framebuffer memory, if any */
	FUNC7(sc->sc_fb_copy, M_USB_DL);

	return (0);
}