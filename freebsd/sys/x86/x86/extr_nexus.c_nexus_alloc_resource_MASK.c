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
struct rman {int dummy; } ;
struct resource_list_entry {int start; int end; int count; } ;
struct resource {int dummy; } ;
struct nexus_device {int /*<<< orphan*/  nx_resources; } ;
typedef  int rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 struct nexus_device* FUNC0 (scalar_t__) ; 
 int RF_ACTIVE ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int,int,struct resource*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct rman* FUNC4 (int) ; 
 struct resource_list_entry* FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 struct resource* FUNC7 (struct rman*,int,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC9(device_t bus, device_t child, int type, int *rid,
		     rman_res_t start, rman_res_t end, rman_res_t count,
		     u_int flags)
{
	struct nexus_device *ndev = FUNC0(child);
	struct	resource *rv;
	struct resource_list_entry *rle;
	struct	rman *rm;
	int needactivate = flags & RF_ACTIVE;

	/*
	 * If this is an allocation of the "default" range for a given
	 * RID, and we know what the resources for this device are
	 * (ie. they aren't maintained by a child bus), then work out
	 * the start/end values.
	 */
	if (FUNC1(start, end) && (count == 1)) {
		if (FUNC3(child) != bus || ndev == NULL)
			return(NULL);
		rle = FUNC5(&ndev->nx_resources, type, *rid);
		if (rle == NULL)
			return(NULL);
		start = rle->start;
		end = rle->end;
		count = rle->count;
	}

	flags &= ~RF_ACTIVE;
	rm = FUNC4(type);
	if (rm == NULL)
		return (NULL);

	rv = FUNC7(rm, start, end, count, flags, child);
	if (rv == NULL)
		return 0;
	FUNC8(rv, *rid);

	if (needactivate) {
		if (FUNC2(child, type, *rid, rv)) {
			FUNC6(rv);
			return 0;
		}
	}

	return rv;
}