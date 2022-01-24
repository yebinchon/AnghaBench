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
struct iobus_softc {struct rman sc_mem_rman; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int RF_ACTIVE ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iobus_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 struct resource* FUNC6 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC8(device_t bus, device_t child, int type, int *rid,
		     rman_res_t start, rman_res_t end, rman_res_t count,
		     u_int flags)
{
	struct iobus_softc *sc;
	int  needactivate;
	struct  resource *rv;
	struct  rman *rm;

	sc = FUNC3(bus);

	needactivate = flags & RF_ACTIVE;
	flags &= ~RF_ACTIVE;

	switch (type) {
	case SYS_RES_MEMORY:
	case SYS_RES_IOPORT:
		rm = &sc->sc_mem_rman;
		break;
	case SYS_RES_IRQ:
		return (FUNC1(bus, type, rid, start, end, count,
		    flags));
	default:
		FUNC4(bus, "unknown resource request from %s\n",
		    FUNC2(child));
		return (NULL);
	}

	rv = FUNC6(rm, start, end, count, flags, child);
	if (rv == NULL) {
		FUNC4(bus, "failed to reserve resource for %s\n",
			      FUNC2(child));
		return (NULL);
	}

	FUNC7(rv, *rid);

	if (needactivate) {
		if (FUNC0(child, type, *rid, rv) != 0) {
                        FUNC4(bus,
				      "failed to activate resource for %s\n",
				      FUNC2(child));
			FUNC5(rv);
			return (NULL);
                }
        }

	return (rv);	
}