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
struct resource_list_entry {scalar_t__ count; scalar_t__ start; } ;
struct resource {int dummy; } ;
struct lbc_softc {struct rman sc_rman; } ;
struct lbc_devinfo {int di_bank; int /*<<< orphan*/  di_res; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  bs_be_tag ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int,int*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 struct lbc_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 struct lbc_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 struct resource_list_entry* FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 struct resource* FUNC9 (struct rman*,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC13(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct lbc_softc *sc;
	struct lbc_devinfo *di;
	struct resource_list_entry *rle;
	struct resource *res;
	struct rman *rm;
	int needactivate;

	/* We only support default allocations. */
	if (!FUNC0(start, end))
		return (NULL);

	sc = FUNC4(bus);
	if (type == SYS_RES_IRQ)
		return (FUNC2(bus, type, rid, start, end, count,
		    flags));

	/*
	 * Request for the default allocation with a given rid: use resource
	 * list stored in the local device info.
	 */
	if ((di = FUNC3(child)) == NULL)
		return (NULL);

	if (type == SYS_RES_IOPORT)
		type = SYS_RES_MEMORY;

	rid = &di->di_bank;

	rle = FUNC6(&di->di_res, type, *rid);
	if (rle == NULL) {
		FUNC5(bus, "no default resources for "
		    "rid = %d, type = %d\n", *rid, type);
		return (NULL);
	}
	start = rle->start;
	count = rle->count;
	end = start + count - 1;

	sc = FUNC4(bus);

	needactivate = flags & RF_ACTIVE;
	flags &= ~RF_ACTIVE;

	rm = &sc->sc_rman;

	res = FUNC9(rm, start, end, count, flags, child);
	if (res == NULL) {
		FUNC5(bus, "failed to reserve resource %#jx - %#jx "
		    "(%#jx)\n", start, end, count);
		return (NULL);
	}

	FUNC12(res, *rid);
	FUNC11(res, &bs_be_tag);
	FUNC10(res, FUNC7(res));

	if (needactivate)
		if (FUNC1(child, type, *rid, res)) {
			FUNC5(child, "resource activation failed\n");
			FUNC8(res);
			return (NULL);
		}

	return (res);
}