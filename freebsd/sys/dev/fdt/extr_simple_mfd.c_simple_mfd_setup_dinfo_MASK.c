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
struct simplebus_softc {int /*<<< orphan*/  scells; int /*<<< orphan*/  acells; } ;
struct simplebus_devinfo {int /*<<< orphan*/  rl; int /*<<< orphan*/  obdinfo; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct simplebus_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct simplebus_devinfo*,int /*<<< orphan*/ ) ; 
 struct simplebus_devinfo* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct simplebus_devinfo *
FUNC8(device_t dev, phandle_t node,
    struct simplebus_devinfo *di)
{
	struct simplebus_softc *sc;
	struct simplebus_devinfo *ndi;

	sc = FUNC1(dev);
	if (di == NULL)
		ndi = FUNC3(sizeof(*ndi), M_DEVBUF, M_WAITOK | M_ZERO);
	else
		ndi = di;
	if (FUNC4(&ndi->obdinfo, node) != 0) {
		if (di == NULL)
			FUNC2(ndi, M_DEVBUF);
		return (NULL);
	}

	/* reg resources is from the parent but interrupts is on the node itself */
	FUNC7(&ndi->rl);
	FUNC6(dev, FUNC0(node), sc->acells, sc->scells, &ndi->rl);
	FUNC5(dev, node, &ndi->rl, NULL);

	return (ndi);
}