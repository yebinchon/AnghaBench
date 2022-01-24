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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct resource_list_entry {int start; int end; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,scalar_t__) ; 
 int ISA_NDRQ ; 
 int ISA_NIRQ ; 
 int ISA_NMEM ; 
 int ISA_NPORT ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SYS_RES_DRQ 131 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ isa_io_base ; 
 scalar_t__ isa_io_limit ; 
 scalar_t__ isa_mem_base ; 
 scalar_t__ isa_mem_limit ; 
 int /*<<< orphan*/  FUNC4 (struct resource_list*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC6 (struct resource_list*,int,int) ; 

struct resource *
FUNC7(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	/*
	 * Consider adding a resource definition.
	 */
	int passthrough = (FUNC3(child) != bus);
	int isdefault = FUNC2(start, end);
	struct resource_list *rl;
	struct resource_list_entry *rle;
	u_long base, limit;

	rl = FUNC0(bus, child);
	if (!passthrough && !isdefault) {
		rle = FUNC6(rl, type, *rid);
		if (!rle) {
			if (*rid < 0)
				return (NULL);
			switch (type) {
			case SYS_RES_IRQ:
				if (*rid >= ISA_NIRQ)
					return (NULL);
				break;
			case SYS_RES_DRQ:
				if (*rid >= ISA_NDRQ)
					return (NULL);
				break;
			case SYS_RES_MEMORY:
				if (*rid >= ISA_NMEM)
					return (NULL);
				break;
			case SYS_RES_IOPORT:
				if (*rid >= ISA_NPORT)
					return (NULL);
				break;
			default:
				return (NULL);
			}
			FUNC4(rl, type, *rid, start, end, count);
		}
	}

	/*
	 * Sanity check if the resource in the respective entry is fully
	 * mapped and specified and its type allocable. A driver could
	 * have added an out of range resource on its own.
	 */
	if (!passthrough) {
		if ((rle = FUNC6(rl, type, *rid)) == NULL)
			return (NULL);
		base = limit = 0;
		switch (type) {
		case SYS_RES_MEMORY:
			base = isa_mem_base;
			limit = base + isa_mem_limit;
			break;
		case SYS_RES_IOPORT:
			base = isa_io_base;
			limit = base + isa_io_limit;
			break;
		case SYS_RES_IRQ:
			if (rle->start != rle->end || rle->start <= 7)
				return (NULL);
			break;
		case SYS_RES_DRQ:
			break;
		default:
			return (NULL);
		}
		if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
			if (!FUNC1(rle->start, base, limit) ||
			    !FUNC1(rle->end, base, limit))
				return (NULL);
		}
	}

	return (FUNC5(rl, bus, child, type, rid, start, end,
	    count, flags));
}