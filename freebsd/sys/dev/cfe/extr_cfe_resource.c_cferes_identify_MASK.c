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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
struct resource {int dummy; } ;
struct cferes_softc {int rnum; int* rid; struct resource** res; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  CFE_FLG_FULL_ARENA ; 
 scalar_t__ CFE_MI_RESERVED ; 
 size_t MAX_CFE_RESERVATIONS ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cferes_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(driver_t* driver, device_t parent)
{
	device_t		 child;
	int			 i;
	struct resource		*res;
	int			 result;
	int			 rid;
	struct cferes_softc	*sc;
	uint64_t		 addr, len, type;

	child = FUNC0(parent, 100, "cferes", -1);
	FUNC9(child, driver);
	sc = FUNC6(child);

	sc->rnum = 0;
	for (i = 0; i < ~0U; i++) {
		result = FUNC4(i, CFE_FLG_FULL_ARENA, &addr, &len, &type);
		if (result < 0)
			break;
		if (type != CFE_MI_RESERVED) {
			if (bootverbose)
			FUNC10("%s: skipping non reserved range 0x%0jx(%jd)\n",
			    FUNC7(child),
			    (uintmax_t)addr, (uintmax_t)len);
			continue;
		}

		FUNC3(child, SYS_RES_MEMORY, sc->rnum, addr, len);
		rid = sc->rnum;
		res = FUNC1(child, SYS_RES_MEMORY, &rid, 0);
		if (res == NULL) {
			FUNC2(child, SYS_RES_MEMORY, sc->rnum);
			continue;
		}
		sc->rid[sc->rnum] = rid;
		sc->res[sc->rnum] = res;

		sc->rnum++;
		if (sc->rnum == MAX_CFE_RESERVATIONS)
			break;
	}

	if (sc->rnum == 0) {
		FUNC5(parent, child);
		return;
	}

	FUNC8(child, "CFE reserved memory");
}