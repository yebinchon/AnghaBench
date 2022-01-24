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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
struct resource {int dummy; } ;
struct bhndb_pci_probe {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bhnd_size_t ;
typedef  int /*<<< orphan*/  bhnd_addr_t ;

/* Variables and functions */
 int FUNC0 (struct bhndb_pci_probe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource**,int /*<<< orphan*/ *) ; 
 void FUNC1 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC2 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC3 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(struct bhndb_pci_probe *probe, bhnd_addr_t addr,
    bhnd_size_t offset, uint32_t value, u_int width)
{
	struct resource	*r;
	bus_size_t	 res_offset;
	int		 error;

	/* Map the target address */
	error = FUNC0(probe, addr, offset, width, &r,
	    &res_offset);
	if (error) {
		FUNC4(probe->dev, "error mapping %#jx+%#jx for "
		    "writing: %d\n", addr, offset, error);
		return;
	}

	/* Perform write */
	switch (width) {
	case 1:
		return (FUNC1(r, res_offset, value));
	case 2:
		return (FUNC2(r, res_offset, value));
	case 4:
		return (FUNC3(r, res_offset, value));
	default:
		FUNC5("unsupported width: %u", width);
	}
}