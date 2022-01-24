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
struct resource_list_entry {int flags; int /*<<< orphan*/  res; } ;
struct resource_list {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int RLE_ALLOCATED ; 
 int RLE_RESERVED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct resource_list_entry* FUNC2 (struct resource_list*,int,int) ; 
 int FUNC3 (struct resource_list*,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ) ; 

int
FUNC4(struct resource_list *rl, device_t bus, device_t child,
    int type, int rid)
{
	struct resource_list_entry *rle = NULL;
	int passthrough = (FUNC0(child) != bus);

	if (passthrough)
		FUNC1(
    "resource_list_unreserve() should only be called for direct children");

	rle = FUNC2(rl, type, rid);

	if (!rle)
		FUNC1("resource_list_unreserve: can't find resource");
	if (!(rle->flags & RLE_RESERVED))
		return (EINVAL);
	if (rle->flags & RLE_ALLOCATED)
		return (EBUSY);
	rle->flags &= ~RLE_RESERVED;
	return (FUNC3(rl, bus, child, type, rid, rle->res));
}