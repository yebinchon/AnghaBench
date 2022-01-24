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
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
struct resource {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int RF_ACTIVE ; 
 int FUNC1 (scalar_t__,int,int,struct resource*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct resource_list_entry* FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct resource*) ; 
 int FUNC5 (struct resource*) ; 

__attribute__((used)) static int
FUNC6(device_t bus, device_t child, int type,
    int rid, struct resource *r)
{
	struct resource_list_entry *rle;
	int passthrough;
	int error;

	passthrough = (FUNC2(child) != bus);
	if (!passthrough) {
		/* Clean resource list entry */
		rle = FUNC3(FUNC0(bus, child),
		    type, rid);
		if (rle != NULL)
			rle->res = NULL;
	}

	if ((FUNC4(r) & RF_ACTIVE) != 0) {
		error = FUNC1(child, type, rid, r);
		if (error)
			return (error);
	}
	return (FUNC5(r));
}