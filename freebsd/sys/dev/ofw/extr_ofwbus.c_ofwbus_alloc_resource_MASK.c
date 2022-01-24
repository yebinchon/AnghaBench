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
struct resource_list_entry {scalar_t__ start; scalar_t__ end; scalar_t__ count; struct resource* res; } ;
struct resource {int dummy; } ;
struct ofwbus_softc {struct rman sc_mem_rman; struct rman sc_intr_rman; } ;
typedef  scalar_t__ rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int RF_ACTIVE ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC2 (scalar_t__,int,int,struct resource*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct ofwbus_softc* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,int) ; 
 struct resource_list_entry* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (struct resource*) ; 
 scalar_t__ FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 struct resource* FUNC10 (struct rman*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*,int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct resource *
FUNC13(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct ofwbus_softc *sc;
	struct rman *rm;
	struct resource *rv;
	struct resource_list_entry *rle;
	int isdefault, passthrough;

	isdefault = FUNC1(start, end);
	passthrough = (FUNC3(child) != bus);
	sc = FUNC4(bus);
	rle = NULL;
	if (!passthrough && isdefault) {
		rle = FUNC6(FUNC0(bus, child),
		    type, *rid);
		if (rle == NULL) {
			if (bootverbose)
				FUNC5(bus, "no default resources for "
				    "rid = %d, type = %d\n", *rid, type);
			return (NULL);
		}
		start = rle->start;
		count = FUNC12(count, rle->count);
		end = FUNC12(rle->end, start + count - 1);
	}

	switch (type) {
	case SYS_RES_IRQ:
		rm = &sc->sc_intr_rman;
		break;
	case SYS_RES_MEMORY:
		rm = &sc->sc_mem_rman;
		break;
	default:
		return (NULL);
	}

	rv = FUNC10(rm, start, end, count, flags & ~RF_ACTIVE,
	    child);
	if (rv == NULL)
		return (NULL);
	FUNC11(rv, *rid);

	if ((flags & RF_ACTIVE) != 0 && FUNC2(child, type,
	    *rid, rv) != 0) {
		FUNC9(rv);
		return (NULL);
	}

	if (!passthrough && rle != NULL) {
		rle->res = rv;
		rle->start = FUNC8(rv);
		rle->end = FUNC7(rv);
		rle->count = rle->end - rle->start + 1;
	}

	return (rv);
}