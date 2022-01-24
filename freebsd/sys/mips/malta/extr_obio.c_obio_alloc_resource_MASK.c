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
typedef  int /*<<< orphan*/  u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct obio_softc {int /*<<< orphan*/  oba_addr; int /*<<< orphan*/  oba_st; struct rman oba_rman; struct rman oba_irq_rman; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct obio_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 struct resource* FUNC3 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC7(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct resource *rv;
	struct rman *rm;
	bus_space_tag_t bt = 0;
	bus_space_handle_t bh = 0;
	struct obio_softc *sc = FUNC1(bus);

	switch (type) {
	case SYS_RES_IRQ:
		rm = &sc->oba_irq_rman;
		break;
	case SYS_RES_MEMORY:
		return (NULL);
	case SYS_RES_IOPORT:
		rm = &sc->oba_rman;
		bt = sc->oba_st;
		bh = sc->oba_addr;
		start = bh;
		break;
	default:
		return (NULL);
	}


	rv = FUNC3(rm, start, end, count, flags, child);
	if (rv == NULL) 
		return (NULL);
	if (type == SYS_RES_IRQ)
		return (rv);
	FUNC6(rv, *rid);
	FUNC5(rv, bt);
	FUNC4(rv, bh);
	
	if (0) {
		if (FUNC0(child, type, *rid, rv)) {
			FUNC2(rv);
			return (NULL);
		}
	}
	return (rv);

}