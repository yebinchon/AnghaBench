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
struct resource_list_entry {int flags; int /*<<< orphan*/ * res; } ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,int,int,struct resource*) ; 
 int EINVAL ; 
 int RF_ACTIVE ; 
 int RLE_ALLOCATED ; 
 int RLE_RESERVED ; 
 int FUNC1 (scalar_t__,int,int,struct resource*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct resource_list_entry* FUNC4 (struct resource_list*,int,int) ; 
 int FUNC5 (struct resource*) ; 

int
FUNC6(struct resource_list *rl, device_t bus, device_t child,
    int type, int rid, struct resource *res)
{
	struct resource_list_entry *rle = NULL;
	int passthrough = (FUNC2(child) != bus);
	int error;

	if (passthrough) {
		return (FUNC0(FUNC2(bus), child,
		    type, rid, res));
	}

	rle = FUNC4(rl, type, rid);

	if (!rle)
		FUNC3("resource_list_release: can't find resource");
	if (!rle->res)
		FUNC3("resource_list_release: resource entry is not busy");
	if (rle->flags & RLE_RESERVED) {
		if (rle->flags & RLE_ALLOCATED) {
			if (FUNC5(res) & RF_ACTIVE) {
				error = FUNC1(child, type,
				    rid, res);
				if (error)
					return (error);
			}
			rle->flags &= ~RLE_ALLOCATED;
			return (0);
		}
		return (EINVAL);
	}

	error = FUNC0(FUNC2(bus), child,
	    type, rid, res);
	if (error)
		return (error);

	rle->res = NULL;
	return (0);
}