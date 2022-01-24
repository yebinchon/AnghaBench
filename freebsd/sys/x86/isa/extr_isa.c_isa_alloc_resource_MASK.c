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
typedef  int /*<<< orphan*/  u_int ;
struct resource_list_entry {int dummy; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct isa_device {struct resource_list id_resources; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct isa_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int ISA_NDRQ ; 
 int ISA_NIRQ ; 
 int ISA_NMEM ; 
 int ISA_NPORT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SYS_RES_DRQ 131 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource_list*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC5 (struct resource_list*,int,int) ; 

struct resource *
FUNC6(device_t bus, device_t child, int type, int *rid,
		   rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	/*
	 * Consider adding a resource definition.
	 */
	int passthrough = (FUNC2(child) != bus);
	int isdefault = FUNC1(start, end);
	struct isa_device* idev = FUNC0(child);
	struct resource_list *rl = &idev->id_resources;
	struct resource_list_entry *rle;
	
	if (!passthrough && !isdefault) {
		rle = FUNC5(rl, type, *rid);
		if (!rle) {
			if (*rid < 0)
				return 0;
			switch (type) {
			case SYS_RES_IRQ:
				if (*rid >= ISA_NIRQ)
					return 0;
				break;
			case SYS_RES_DRQ:
				if (*rid >= ISA_NDRQ)
					return 0;
				break;
			case SYS_RES_MEMORY:
				if (*rid >= ISA_NMEM)
					return 0;
				break;
			case SYS_RES_IOPORT:
				if (*rid >= ISA_NPORT)
					return 0;
				break;
			default:
				return 0;
			}
			FUNC3(rl, type, *rid, start, end, count);
		}
	}

	return FUNC4(rl, bus, child, type, rid,
				   start, end, count, flags);
}