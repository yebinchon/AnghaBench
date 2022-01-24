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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
struct resource {int dummy; } ;
struct bhndb_pci_softc {int dummy; } ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int FUNC0 (struct bhndb_pci_softc*,scalar_t__,int,struct resource**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

__attribute__((used)) static void
FUNC5(struct bhndb_pci_softc *sc, bus_size_t offset,
    uint32_t value, u_int width)
{
	struct resource	*r;
	bus_size_t	 r_offset;
	int		 error;

	error = FUNC0(sc, offset, width, &r, &r_offset);
	if (error) {
		FUNC4("no PCI register window mapping %#jx+%#x: %d",
		    (uintmax_t)offset, width, error);
	}

	switch (width) {
	case 1:
		FUNC1(r, r_offset, value);
		break;
	case 2:
		FUNC2(r, r_offset, value);
		break;
	case 4:
		FUNC3(r, r_offset, value);
		break;
	default:
		FUNC4("invalid width: %u", width);
	}
}