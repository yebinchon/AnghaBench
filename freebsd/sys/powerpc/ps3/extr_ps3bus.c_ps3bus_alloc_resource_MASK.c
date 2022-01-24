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
struct resource_list_entry {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  count; } ;
struct resource {int dummy; } ;
struct ps3bus_softc {struct rman sc_intr_rman; struct rman sc_mem_rman; } ;
struct ps3bus_devinfo {int /*<<< orphan*/  resources; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct ps3bus_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ps3bus_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 struct resource_list_entry* FUNC5 (int /*<<< orphan*/ *,int const,int) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 struct resource* FUNC7 (struct rman*,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource *
FUNC10(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct	ps3bus_devinfo *dinfo;
	struct	ps3bus_softc *sc;
	int	needactivate;
        struct	resource *rv;
        struct	rman *rm;
        rman_res_t	adjstart, adjend, adjcount;
        struct	resource_list_entry *rle;

	sc = FUNC3(bus);
	dinfo = FUNC1(child);
	needactivate = flags & RF_ACTIVE;
	flags &= ~RF_ACTIVE;

	switch (type) {
	case SYS_RES_MEMORY:
		rle = FUNC5(&dinfo->resources, SYS_RES_MEMORY,
		    *rid);
		if (rle == NULL) {
			FUNC4(bus, "no rle for %s memory %d\n",
				      FUNC2(child), *rid);
			return (NULL);
		}

		if (start < rle->start)
			adjstart = rle->start;
		else if (start > rle->end)
			adjstart = rle->end;
		else
			adjstart = start;

		if (end < rle->start)
			adjend = rle->start;
		else if (end > rle->end)
			adjend = rle->end;
		else
			adjend = end;

		adjcount = adjend - adjstart;

		rm = &sc->sc_mem_rman;
		break;
	case SYS_RES_IRQ:
		rle = FUNC5(&dinfo->resources, SYS_RES_IRQ,
		    *rid);
		rm = &sc->sc_intr_rman;
		adjstart = rle->start;
		adjcount = FUNC9(count, rle->count);
		adjend = FUNC9(rle->end, rle->start + adjcount - 1);
		break;
	default:
		FUNC4(bus, "unknown resource request from %s\n",
			      FUNC2(child));
		return (NULL);
        }

	rv = FUNC7(rm, adjstart, adjend, adjcount, flags,
	    child);
	if (rv == NULL) {
		FUNC4(bus,
			"failed to reserve resource %#lx - %#lx (%#lx)"
			" for %s\n", adjstart, adjend, adjcount,
			FUNC2(child));
		return (NULL);
	}

	FUNC8(rv, *rid);

	if (needactivate) {
		if (FUNC0(child, type, *rid, rv) != 0) {
			FUNC4(bus,
				"failed to activate resource for %s\n",
				FUNC2(child));
				FUNC6(rv);
			return (NULL);
		}
	}

	return (rv);
}