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
struct ofw_pcibus_devinfo {int /*<<< orphan*/ * opd_dma_tag; } ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/ * bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct ofw_pcibus_devinfo* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bus_dma_tag_t
FUNC5(device_t dev, device_t child)
{
	struct ofw_pcibus_devinfo *dinfo;

	while (FUNC3(child) != dev)
		child = FUNC3(child);

	dinfo = FUNC2(child);

	if (dinfo->opd_dma_tag != NULL)
		return (dinfo->opd_dma_tag);

	FUNC0(FUNC1(dev),
	    1, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
	    NULL, NULL, BUS_SPACE_MAXSIZE, BUS_SPACE_UNRESTRICTED,
	    BUS_SPACE_MAXSIZE, 0, NULL, NULL, &dinfo->opd_dma_tag);
	FUNC4(dev, child, dinfo->opd_dma_tag);

	return (dinfo->opd_dma_tag);
}