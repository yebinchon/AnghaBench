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
typedef  int u_int ;
struct resource_list_entry {int flags; struct resource* res; scalar_t__ count; scalar_t__ end; scalar_t__ start; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef  scalar_t__ rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 struct resource* FUNC0 (scalar_t__,scalar_t__,int,int*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int RF_ACTIVE ; 
 int RLE_ALLOCATED ; 
 int RLE_RESERVED ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,int,int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC6 (struct resource_list*,int,int) ; 
 scalar_t__ FUNC7 (struct resource*) ; 
 scalar_t__ FUNC8 (struct resource*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

struct resource *
FUNC10(struct resource_list *rl, device_t bus, device_t child,
    int type, int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct resource_list_entry *rle = NULL;
	int passthrough = (FUNC4(child) != bus);
	int isdefault = FUNC1(start, end);

	if (passthrough) {
		return (FUNC0(FUNC4(bus), child,
		    type, rid, start, end, count, flags));
	}

	rle = FUNC6(rl, type, *rid);

	if (!rle)
		return (NULL);		/* no resource of that type/rid */

	if (rle->res) {
		if (rle->flags & RLE_RESERVED) {
			if (rle->flags & RLE_ALLOCATED)
				return (NULL);
			if ((flags & RF_ACTIVE) &&
			    FUNC2(child, type, *rid,
			    rle->res) != 0)
				return (NULL);
			rle->flags |= RLE_ALLOCATED;
			return (rle->res);
		}
		FUNC5(bus,
		    "resource entry %#x type %d for child %s is busy\n", *rid,
		    type, FUNC3(child));
		return (NULL);
	}

	if (isdefault) {
		start = rle->start;
		count = FUNC9(count, rle->count);
		end = FUNC9(rle->end, start + count - 1);
	}

	rle->res = FUNC0(FUNC4(bus), child,
	    type, rid, start, end, count, flags);

	/*
	 * Record the new range.
	 */
	if (rle->res) {
		rle->start = FUNC8(rle->res);
		rle->end = FUNC7(rle->res);
		rle->count = count;
	}

	return (rle->res);
}