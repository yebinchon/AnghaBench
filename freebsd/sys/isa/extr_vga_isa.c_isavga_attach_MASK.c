#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  adp; } ;
typedef  TYPE_1__ vga_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  isavga_cdevsw ; 
 int FUNC8 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	vga_softc_t *sc;
	int unit;
	int rid;
	int error;

	unit = FUNC6(dev);
	sc = FUNC5(dev);

	rid = 0;
	FUNC1(dev, SYS_RES_IOPORT, &rid,
				  RF_ACTIVE | RF_SHAREABLE);
	rid = 0;
	FUNC1(dev, SYS_RES_MEMORY, &rid,
				 RF_ACTIVE | RF_SHAREABLE);

	error = FUNC8(unit, sc, FUNC4(dev));
	if (error)
		return (error);

#ifdef FB_INSTALL_CDEV
	/* attach a virtual frame buffer device */
	error = fb_attach(VGA_MKMINOR(unit), sc->adp, &isavga_cdevsw);
	if (error)
		return (error);
#endif /* FB_INSTALL_CDEV */

	if (0 && bootverbose)
		FUNC9(sc->adp, bootverbose);

#if 0 /* experimental */
	device_add_child(dev, "fb", -1);
	bus_generic_attach(dev);
#endif

	return (0);
}