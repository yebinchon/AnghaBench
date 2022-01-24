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
typedef  void* u_long ;
typedef  int u_int ;
struct rman {int dummy; } ;
struct resource_list_entry {void* start; void* end; } ;
struct resource {int dummy; } ;
struct macio_softc {struct rman sc_mem_rman; } ;
struct macio_devinfo {int mdi_ninterrupts; int /*<<< orphan*/  mdi_resources; void** mdi_interrupts; } ;
typedef  void* rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,void*,void*,void*,int) ; 
 int RF_ACTIVE ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct macio_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct macio_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,void*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const,int,void*,void*,int) ; 
 struct resource* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,void*,void*,void*,int) ; 
 struct resource_list_entry* FUNC9 (int /*<<< orphan*/ *,int const,int) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 struct resource* FUNC11 (struct rman*,void*,void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC13(device_t bus, device_t child, int type, int *rid,
		     rman_res_t start, rman_res_t end, rman_res_t count,
		     u_int flags)
{
	struct		macio_softc *sc;
	int		needactivate;
	struct		resource *rv;
	struct		rman *rm;
	u_long		adjstart, adjend, adjcount;
	struct		macio_devinfo *dinfo;
	struct		resource_list_entry *rle;

	sc = FUNC5(bus);
	dinfo = FUNC2(child);

	needactivate = flags & RF_ACTIVE;
	flags &= ~RF_ACTIVE;

	switch (type) {
	case SYS_RES_MEMORY:
	case SYS_RES_IOPORT:
		rle = FUNC9(&dinfo->mdi_resources, SYS_RES_MEMORY,
		    *rid);
		if (rle == NULL) {
			FUNC6(bus, "no rle for %s memory %d\n",
			    FUNC3(child), *rid);
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
		/* Check for passthrough from subattachments like macgpio */
		if (FUNC4(child) != bus)
			return FUNC0(FUNC4(bus), child,
			    type, rid, start, end, count, flags);

		rle = FUNC9(&dinfo->mdi_resources, SYS_RES_IRQ,
		    *rid);
		if (rle == NULL) {
			if (dinfo->mdi_ninterrupts >= 6) {
				FUNC6(bus,
				    "%s has more than 6 interrupts\n",
				    FUNC3(child));
				return (NULL);
			}
			FUNC7(&dinfo->mdi_resources, SYS_RES_IRQ,
			    dinfo->mdi_ninterrupts, start, start, 1);

			dinfo->mdi_interrupts[dinfo->mdi_ninterrupts] = start;
			dinfo->mdi_ninterrupts++;
		}

		return (FUNC8(&dinfo->mdi_resources, bus, child,
		    type, rid, start, end, count, flags));

	default:
		FUNC6(bus, "unknown resource request from %s\n",
			      FUNC3(child));
		return (NULL);
	}

	rv = FUNC11(rm, adjstart, adjend, adjcount, flags,
	    child);
	if (rv == NULL) {
		FUNC6(bus,
		    "failed to reserve resource %#lx - %#lx (%#lx) for %s\n",
		    adjstart, adjend, adjcount, FUNC3(child));
		return (NULL);
	}

	FUNC12(rv, *rid);

	if (needactivate) {
		if (FUNC1(child, type, *rid, rv) != 0) {
                        FUNC6(bus,
				      "failed to activate resource for %s\n",
				      FUNC3(child));
			FUNC10(rv);
			return (NULL);
                }
        }

	return (rv);
}