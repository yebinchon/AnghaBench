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
struct lbc_softc {TYPE_1__* sc_banks; } ;
struct lbc_devinfo {int di_bank; int /*<<< orphan*/  di_res; } ;
typedef  int rman_res_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
struct TYPE_2__ {int kva; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int
FUNC7(phandle_t node, struct lbc_softc *sc,
    struct lbc_devinfo *di)
{
	rman_res_t start, end, count;
	pcell_t *reg, *regptr;
	pcell_t addr_cells, size_cells;
	int tuple_size, tuples;
	int i, j, rv, bank;

	if (FUNC4(FUNC1(node), &addr_cells, &size_cells) != 0)
		return (ENXIO);

	tuple_size = sizeof(pcell_t) * (addr_cells + size_cells);
	tuples = FUNC0(node, "reg", tuple_size,
	    (void **)&reg);
	FUNC3("addr_cells = %d, size_cells = %d\n", addr_cells, size_cells);
	FUNC3("tuples = %d, tuple size = %d\n", tuples, tuple_size);
	if (tuples <= 0)
		/* No 'reg' property in this node. */
		return (0);

	regptr = reg;
	for (i = 0; i < tuples; i++) {

		bank = FUNC5((void *)reg, 1);
		di->di_bank = bank;
		reg += 1;

		/* Get address/size. */
		start = count = 0;
		for (j = 0; j < addr_cells; j++) {
			start <<= 32;
			start |= reg[j];
		}
		for (j = 0; j < size_cells; j++) {
			count <<= 32;
			count |= reg[addr_cells + j - 1];
		}
		reg += addr_cells - 1 + size_cells;

		/* Calculate address range relative to VA base. */
		start = sc->sc_banks[bank].kva + start;
		end = start + count - 1;

		FUNC3("reg addr bank = %d, start = %jx, end = %jx, "
		    "count = %jx\n", bank, start, end, count);

		/* Use bank (CS) cell as rid. */
		FUNC6(&di->di_res, SYS_RES_MEMORY, bank, start,
		    end, count);
	}
	rv = 0;
	FUNC2(regptr);
	return (rv);
}