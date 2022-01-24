#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_2__ {int nranges; } ;
struct fman_softc {struct resource* mem_res; int /*<<< orphan*/  rman; TYPE_1__ sc_base; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int EINVAL ; 
 int SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fman_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 scalar_t__ FUNC7 (struct resource*) ; 
 scalar_t__ FUNC8 (struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,int /*<<< orphan*/ ) ; 

int
FUNC11(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{
	struct fman_softc *sc;
	bus_space_tag_t bt;
	bus_space_handle_t bh;
	int i, rv;

	sc = FUNC2(bus);
	if (type != SYS_RES_IRQ) {
		for (i = 0; i < sc->sc_base.nranges; i++) {
			if (FUNC8(res, &sc->rman) != 0) {
				bt = FUNC5(sc->mem_res);
				rv = FUNC1(bt,
				    FUNC4(sc->mem_res),
				    FUNC7(res) -
				    FUNC7(sc->mem_res),
				    FUNC6(res), &bh);
				if (rv != 0)
					return (rv);
				FUNC10(res, bt);
				FUNC9(res, bh);
				return (FUNC3(res));
			}
		}
		return (EINVAL);
	}
	return (FUNC0(bus, child, type, rid, res));
}