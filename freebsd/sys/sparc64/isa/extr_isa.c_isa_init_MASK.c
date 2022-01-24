#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ofw_isa_intr_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
#define  ISAR_SPACE_IO 129 
#define  ISAR_SPACE_MEM 128 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isa_iinfo ; 
 void* isa_io_base ; 
 int /*<<< orphan*/  isa_io_limit ; 
 void* isa_mem_base ; 
 int /*<<< orphan*/  isa_mem_limit ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isab_node ; 
 int isab_nrange ; 
 TYPE_1__* isab_ranges ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(device_t dev)
{
	device_t bridge;
	int i;

	/* The parent of the bus must be a PCI-ISA bridge. */
	bridge = FUNC3(dev);
	isab_node = FUNC5(bridge);
	isab_nrange = FUNC2(isab_node, "ranges",
	    sizeof(*isab_ranges), (void **)&isab_ranges);
	if (isab_nrange <= 0)
		FUNC7("isa_init: cannot get bridge range property");

	FUNC6(isab_node, &isa_iinfo, sizeof(ofw_isa_intr_t));

	FUNC4(dev, isab_node);

	for (i = isab_nrange - 1; i >= 0; i--) {
		switch(FUNC1(&isab_ranges[i])) {
		case ISAR_SPACE_IO:
			/* This is probably always 0. */
			isa_io_base = FUNC0(&isab_ranges[i]);
			isa_io_limit = isab_ranges[i].size;
			break;
		case ISAR_SPACE_MEM:
			/* This is probably always 0. */
			isa_mem_base = FUNC0(&isab_ranges[i]);
			isa_mem_limit = isab_ranges[i].size;
			break;
		}
	}
}