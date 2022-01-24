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
struct mtk_usb_phy_softc {int /*<<< orphan*/ * res; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mtk_usb_phy_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct mtk_usb_phy_softc *sc = FUNC2(dev);
	phandle_t node;

	/* Get our FDT node */
	node = FUNC5(dev);

	/* If we have resets defined - assert them */
	if (FUNC0(node, "resets"))
		FUNC4(dev);

	/* If we have clocks defined - disable them */
	if (FUNC0(node, "clocks"))
		FUNC3(dev);

	/* Finally, release resources, if any were allocated */
	if (sc->res != NULL)
		FUNC1(dev, SYS_RES_MEMORY, 0, sc->res);

	return (0);
}