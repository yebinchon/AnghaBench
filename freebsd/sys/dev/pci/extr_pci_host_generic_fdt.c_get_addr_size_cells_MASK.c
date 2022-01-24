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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 

__attribute__((used)) static __inline void
FUNC1(phandle_t node, pcell_t *addr_cells, pcell_t *size_cells)
{

	*addr_cells = 2;
	/* Find address cells if present */
	FUNC0(node, "#address-cells", addr_cells, sizeof(*addr_cells));

	*size_cells = 2;
	/* Find size cells if present */
	FUNC0(node, "#size-cells", size_cells, sizeof(*size_cells));
}