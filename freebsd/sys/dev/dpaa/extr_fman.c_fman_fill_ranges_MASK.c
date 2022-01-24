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
struct simplebus_softc {int nranges; int acells; int scells; TYPE_1__* ranges; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  host_address_cells ;
typedef  int cell_t ;
struct TYPE_2__ {int bus; int host; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(phandle_t node, struct simplebus_softc *sc)
{
	int host_address_cells;
	cell_t *base_ranges;
	ssize_t nbase_ranges;
	int err;
	int i, j, k;

	err = FUNC3(FUNC2(node), "#address-cells",
	    &host_address_cells, sizeof(host_address_cells));
	if (err <= 0)
		return (-1);

	nbase_ranges = FUNC1(node, "ranges");
	if (nbase_ranges < 0)
		return (-1);
	sc->nranges = nbase_ranges / sizeof(cell_t) /
	    (sc->acells + host_address_cells + sc->scells);
	if (sc->nranges == 0)
		return (0);

	sc->ranges = FUNC5(sc->nranges * sizeof(sc->ranges[0]),
	    M_DEVBUF, M_WAITOK);
	base_ranges = FUNC5(nbase_ranges, M_DEVBUF, M_WAITOK);
	FUNC0(node, "ranges", base_ranges, nbase_ranges);

	for (i = 0, j = 0; i < sc->nranges; i++) {
		sc->ranges[i].bus = 0;
		for (k = 0; k < sc->acells; k++) {
			sc->ranges[i].bus <<= 32;
			sc->ranges[i].bus |= base_ranges[j++];
		}
		sc->ranges[i].host = 0;
		for (k = 0; k < host_address_cells; k++) {
			sc->ranges[i].host <<= 32;
			sc->ranges[i].host |= base_ranges[j++];
		}
		sc->ranges[i].size = 0;
		for (k = 0; k < sc->scells; k++) {
			sc->ranges[i].size <<= 32;
			sc->ranges[i].size |= base_ranges[j++];
		}
	}

	FUNC4(base_ranges, M_DEVBUF);
	return (sc->nranges);
}