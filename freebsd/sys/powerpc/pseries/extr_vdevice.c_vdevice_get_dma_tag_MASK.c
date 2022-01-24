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
struct vdevice_devinfo {int /*<<< orphan*/ * mdi_dma_tag; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/ * bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vdevice_devinfo* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bus_dma_tag_t
FUNC5(device_t dev, device_t child)
{
	struct vdevice_devinfo *dinfo;
	while (child != NULL && FUNC3(child) != dev)
		child = FUNC3(child);
        dinfo = FUNC2(child);

	if (dinfo->mdi_dma_tag == NULL) {
		FUNC0(FUNC1(dev),
		    1, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
		    NULL, NULL, BUS_SPACE_MAXSIZE, BUS_SPACE_UNRESTRICTED,
		    BUS_SPACE_MAXSIZE, 0, NULL, NULL, &dinfo->mdi_dma_tag);
		FUNC4(dev, child, dinfo->mdi_dma_tag);
	}

        return (dinfo->mdi_dma_tag);
}