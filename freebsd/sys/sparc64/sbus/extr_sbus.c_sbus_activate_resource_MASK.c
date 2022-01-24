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
struct sbus_softc {int sc_nrange; TYPE_1__* sc_rd; } ;
struct resource {int dummy; } ;
struct bus_space_tag {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ rd_bushandle; int /*<<< orphan*/  rd_rman; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SBUS_BUS_SPACE ; 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct sbus_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,struct bus_space_tag*) ; 
 struct bus_space_tag* FUNC7 (struct resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	struct sbus_softc *sc;
	struct bus_space_tag *tag;
	int i;

	switch (type) {
	case SYS_RES_IRQ:
		return (FUNC0(bus, child, type, rid,
		    r));
	case SYS_RES_MEMORY:
		sc = FUNC1(bus);
		for (i = 0; i < sc->sc_nrange; i++) {
			if (FUNC4(r,
			    &sc->sc_rd[i].rd_rman) != 0) {
				tag = FUNC7(r, SBUS_BUS_SPACE);
				if (tag == NULL)
					return (ENOMEM);
				FUNC6(r, tag);
				FUNC5(r,
				    sc->sc_rd[i].rd_bushandle +
				    FUNC3(r));
				return (FUNC2(r));
			}
		}
		/* FALLTHROUGH */
	default:
		return (EINVAL);
	}
}