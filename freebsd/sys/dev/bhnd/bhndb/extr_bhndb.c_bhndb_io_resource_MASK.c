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
struct bhndb_softc {int /*<<< orphan*/  bus_res; int /*<<< orphan*/  dev; } ;
struct bhndb_dw_alloc {scalar_t__ target; TYPE_1__* win; } ;
typedef  scalar_t__ bus_size_t ;
typedef  scalar_t__ bus_addr_t ;
struct TYPE_2__ {scalar_t__ win_size; scalar_t__ win_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bhndb_dw_alloc*,scalar_t__,scalar_t__) ; 
 struct bhndb_dw_alloc* FUNC2 (struct bhndb_softc*,scalar_t__,scalar_t__,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long,scalar_t__) ; 

__attribute__((used)) static inline struct bhndb_dw_alloc *
FUNC4(struct bhndb_softc *sc, bus_addr_t addr, bus_size_t size,
    bus_size_t *offset, bool *stolen, bus_addr_t *restore)
{
	struct bhndb_dw_alloc	*dwa;
	bool			 borrowed;
	int			 error;

	FUNC0(sc, MA_OWNED);

	dwa = FUNC2(sc, addr, size, &borrowed, stolen,
	    restore);

	/* Adjust the window if the I/O request won't fit in the current
	 * target range. */
	if (addr < dwa->target ||
	    addr > dwa->target + dwa->win->win_size ||
	    (dwa->target + dwa->win->win_size) - addr < size)
	{
		/* Cannot modify target of borrowed windows */
		if (borrowed) {
			FUNC3("borrowed register window does not map expected "
			    "range 0x%llx-0x%llx\n", 
			    (unsigned long long) addr,
			    (unsigned long long) addr+size-1);
		}
	
		error = FUNC1(sc->dev, sc->bus_res, dwa, addr,
		    size);
		if (error) {
		    FUNC3("failed to set register window target mapping "
			    "0x%llx-0x%llx\n", 
			    (unsigned long long) addr,
			    (unsigned long long) addr+size-1);
		}
	}

	/* Calculate the offset and return */
	*offset = (addr - dwa->target) + dwa->win->win_offset;
	return (dwa);
}