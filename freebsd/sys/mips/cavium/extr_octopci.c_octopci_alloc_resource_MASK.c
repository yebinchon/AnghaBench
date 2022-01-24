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
typedef  int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct octopci_softc {scalar_t__ sc_io_base; scalar_t__ sc_mem1_base; struct rman sc_io; struct rman sc_mem1; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct octopci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  octopci_bus_space ; 
 scalar_t__ FUNC3 (struct resource*) ; 
 scalar_t__ FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 struct resource* FUNC6 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,void*) ; 

__attribute__((used)) static struct resource *
FUNC11(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct octopci_softc *sc;
	struct resource *res;
	struct rman *rm;
	int error;

	sc = FUNC2(bus);

	switch (type) {
	case SYS_RES_IRQ:
		res = FUNC1(bus, child, type, rid, start,
		    end, count, flags);
		if (res != NULL)
			return (res);
		return (NULL);
	case SYS_RES_MEMORY:
		rm = &sc->sc_mem1;
		break;
	case SYS_RES_IOPORT:
		rm = &sc->sc_io;
		break;
	default:
		return (NULL);
	}

	res = FUNC6(rm, start, end, count, flags, child);
	if (res == NULL)
		return (NULL);

	FUNC9(res, *rid);
	FUNC8(res, octopci_bus_space);

	switch (type) {
	case SYS_RES_MEMORY:
		FUNC7(res, sc->sc_mem1_base + FUNC4(res));
		break;
	case SYS_RES_IOPORT:
		FUNC7(res, sc->sc_io_base + FUNC4(res));
#if __mips_n64
		rman_set_virtual(res, (void *)rman_get_bushandle(res));
#else
		/*
		 * XXX
		 * We can't access ports via a 32-bit pointer.
		 */
		FUNC10(res, NULL);
#endif
		break;
	}

	if ((flags & RF_ACTIVE) != 0) {
		error = FUNC0(child, type, *rid, res);
		if (error != 0) {
			FUNC5(res);
			return (NULL);
		}
	}

	return (res);
}