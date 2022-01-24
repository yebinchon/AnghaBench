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
struct simplebus_softc {int acells; int scells; scalar_t__ node; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int*,int) ; 
 struct simplebus_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(device_t dev, phandle_t node)
{
	struct simplebus_softc *sc;

	sc = FUNC1(dev);
	if (node == 0)
		node = FUNC2(dev);
	sc->dev = dev;
	sc->node = node;

	/*
	 * Some important numbers
	 */
	sc->acells = 2;
	FUNC0(node, "#address-cells", &sc->acells, sizeof(sc->acells));
	sc->scells = 1;
	FUNC0(node, "#size-cells", &sc->scells, sizeof(sc->scells));
}