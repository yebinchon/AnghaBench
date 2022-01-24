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
struct resource_map_request {scalar_t__ offset; scalar_t__ length; int /*<<< orphan*/  memattr; int /*<<< orphan*/  size; } ;
struct resource_map {int /*<<< orphan*/ * r_vaddr; scalar_t__ r_bushandle; scalar_t__ r_size; int /*<<< orphan*/  r_bustag; } ;
struct resource {int dummy; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_space_handle_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  X86_BUS_SPACE_IO ; 
 int /*<<< orphan*/  X86_BUS_SPACE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct resource_map_request*,struct resource_map_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource_map_request*) ; 
 scalar_t__ FUNC4 (struct resource*) ; 
 int FUNC5 (struct resource*) ; 
 scalar_t__ FUNC6 (struct resource*) ; 
 scalar_t__ FUNC7 (struct resource*) ; 

__attribute__((used)) static int
FUNC8(device_t bus, device_t child, int type, struct resource *r,
    struct resource_map_request *argsp, struct resource_map *map)
{
	struct resource_map_request args;
	rman_res_t end, length, start;

	/* Resources must be active to be mapped. */
	if (!(FUNC5(r) & RF_ACTIVE))
		return (ENXIO);

	/* Mappings are only supported on I/O and memory resources. */
	switch (type) {
	case SYS_RES_IOPORT:
	case SYS_RES_MEMORY:
		break;
	default:
		return (EINVAL);
	}

	FUNC3(&args);
	if (argsp != NULL)
		FUNC0(argsp, &args, FUNC1(argsp->size, args.size));
	start = FUNC7(r) + args.offset;
	if (args.length == 0)
		length = FUNC6(r);
	else
		length = args.length;
	end = start + length - 1;
	if (start > FUNC4(r) || start < FUNC7(r))
		return (EINVAL);
	if (end > FUNC4(r) || end < start)
		return (EINVAL);

	/*
	 * If this is a memory resource, map it into the kernel.
	 */
	switch (type) {
	case SYS_RES_IOPORT:
		map->r_bushandle = start;
		map->r_bustag = X86_BUS_SPACE_IO;
		map->r_size = length;
		map->r_vaddr = NULL;
		break;
	case SYS_RES_MEMORY:
		map->r_vaddr = FUNC2(start, length, args.memattr);
		map->r_bustag = X86_BUS_SPACE_MEM;
		map->r_size = length;

		/*
		 * The handle is the virtual address.
		 */
		map->r_bushandle = (bus_space_handle_t)map->r_vaddr;
		break;
	}
	return (0);
}