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
struct xdma_iommu {int /*<<< orphan*/  dev; int /*<<< orphan*/ * vmem; int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  mem_handle ;

/* Variables and functions */
 int ENXIO ; 
 int M_FIRSTFIT ; 
 int M_WAITOK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct xdma_iommu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(struct xdma_iommu *xio)
{
#ifdef FDT
	phandle_t mem_node, node;
	pcell_t mem_handle;
#endif

	FUNC5(&xio->p);

#ifdef FDT
	node = ofw_bus_get_node(xio->dev);
	if (!OF_hasprop(node, "va-region"))
		return (ENXIO);

	if (OF_getencprop(node, "va-region", (void *)&mem_handle,
	    sizeof(mem_handle)) <= 0)
		return (ENXIO);
#endif

	xio->vmem = FUNC6("xDMA vmem", 0, 0, PAGE_SIZE,
	    PAGE_SIZE, M_FIRSTFIT | M_WAITOK);
	if (xio->vmem == NULL)
		return (ENXIO);

#ifdef FDT
	mem_node = OF_node_from_xref(mem_handle);
	if (xdma_handle_mem_node(xio->vmem, mem_node) != 0) {
		vmem_destroy(xio->vmem);
		return (ENXIO);
	}
#endif

	FUNC3(xio->dev, xio);

	return (0);
}