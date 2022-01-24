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
typedef  int uint32_t ;
struct nvram2env_softc {scalar_t__ sig; scalar_t__ maxsize; int flags; int addr; int need_swap; int crc; scalar_t__ bsh; int /*<<< orphan*/ * bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_SPECIFIC ; 
 scalar_t__ CFE_NVRAM_SIGNATURE ; 
 int ENXIO ; 
 int NVRAM_FLAGS_GENERIC ; 
 int NVRAM_FLAGS_UBOOT ; 
 scalar_t__ NVRAM_MAX_SIZE ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct nvram2env_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ,char*,int*) ; 

int
FUNC9(device_t dev)
{
	uint32_t i, ivar, sig;
	struct nvram2env_softc * sc = FUNC3(dev);

	/*
	 * Please ensure that your implementation of NVRAM->ENV specifies
	 * bus tag
	 */
	if (sc->bst == NULL)
		return (ENXIO);

	if (sc->sig == 0)
		if (FUNC8("nvram", FUNC4(dev), "sig",
		    &sc->sig) != 0 || sc->sig == 0)
			sc->sig = CFE_NVRAM_SIGNATURE;

	if (sc->maxsize == 0)
		if (FUNC8("nvram", FUNC4(dev), "maxsize",
		    &sc->maxsize) != 0 || sc->maxsize == 0)
			sc->maxsize = NVRAM_MAX_SIZE;

	if (sc->flags == 0)
		if (FUNC8("nvram", FUNC4(dev), "flags",
		    &sc->flags) != 0 || sc->flags == 0)
			sc->flags = NVRAM_FLAGS_GENERIC;


	for (i = 0; i < 2; i ++)
	{
		switch (i) {
		case 0:
			break;
		case 1:
		case 2:
			if (FUNC8("nvram", FUNC4(dev),
			    (i == 1) ? "base" : "fallbackbase", &ivar) != 0 ||
			    ivar == 0)
				continue;

			sc->addr = ivar;
			break;
		default:
			break;
		}

		if (sc->addr == 0)
			continue;

		if (bootverbose)
			FUNC5(dev, "base=0x%08x sig=0x%08x "
			    "maxsize=0x%08x flags=0x%08x\n",
			    sc->addr, sc->sig, sc->maxsize, sc->flags);

		if (FUNC0(sc->bst, sc->addr, sc->maxsize, 0,
		    &sc->bsh) != 0)
			continue;

		sig = FUNC1(sc->bst, sc->bsh, 0);
		if ( sig == sc->sig /*FLSH*/)
		{
			FUNC5(dev, "Found NVRAM at %#x\n", 
			    (uint32_t)ivar);
			sc->need_swap = 0;
			goto unmap_done;
		}
		else if ( FUNC7(sig) == sc->sig /*HSLF*/)
		{
			FUNC5(dev, "Found NVRAM at %#x\n", 
			    (uint32_t)ivar);
			sc->need_swap = 1;
			goto unmap_done;
		} else if (sc->flags & NVRAM_FLAGS_UBOOT) {
			FUNC5(dev, "Use NVRAM at %#x\n", 
			    (uint32_t)ivar);
			sc->crc = sig;
			goto unmap_done;
		}
		FUNC2(sc->bst, sc->bsh, NVRAM_MAX_SIZE);
	}
	sc->bst = 0;
	sc->bsh = 0;
	sc->addr = 0;
	return (ENXIO);

unmap_done:
	FUNC2(sc->bst, sc->bsh, NVRAM_MAX_SIZE);
	FUNC6(dev, "NVRAM to ENV pseudo-device");
	return (BUS_PROBE_SPECIFIC);

}