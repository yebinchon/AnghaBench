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
struct resource {int dummy; } ;
struct ebus_softc {int sc_flags; int sc_nrange; struct ebus_rinfo* sc_rinfo; } ;
struct ebus_rinfo {struct resource* eri_res; int /*<<< orphan*/  eri_rman; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int EBUS_PCI ; 
 int EINVAL ; 
 int SYS_RES_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ebus_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 scalar_t__ FUNC7 (struct resource*) ; 
 scalar_t__ FUNC8 (struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{
	struct ebus_softc *sc;
	struct ebus_rinfo *eri;
	bus_space_tag_t bt;
	bus_space_handle_t bh;
	int i, rv;

	sc = FUNC2(bus);
	if ((sc->sc_flags & EBUS_PCI) != 0 && type != SYS_RES_IRQ) {
		for (i = 0; i < sc->sc_nrange; i++) {
			eri = &sc->sc_rinfo[i];
			if (FUNC8(res, &eri->eri_rman) != 0) {
				bt = FUNC5(eri->eri_res);
				rv = FUNC1(bt,
				    FUNC4(eri->eri_res),
				    FUNC7(res) -
				    FUNC7(eri->eri_res),
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