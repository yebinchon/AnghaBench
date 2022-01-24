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
struct resource_list_entry {struct resource* res; } ;
struct resource {int dummy; } ;
struct pccard_ivar {int /*<<< orphan*/  resources; } ;
typedef  int rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,struct resource*) ; 
 struct resource* FUNC1 (scalar_t__,scalar_t__,int,int*,int,int,int,int) ; 
 int RF_ACTIVE ; 
 scalar_t__ FUNC2 (int,int) ; 
 struct resource* FUNC3 (scalar_t__,int,int*,int,int,int,int) ; 
 struct pccard_ivar* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct resource_list_entry* FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC9 (struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (struct resource*,scalar_t__) ; 

__attribute__((used)) static struct resource *
FUNC13(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct pccard_ivar *dinfo;
	struct resource_list_entry *rle = NULL;
	int passthrough = (FUNC5(child) != dev);
	int isdefault = (FUNC2(start, end) && count == 1);
	struct resource *r = NULL;

	/* XXX I'm no longer sure this is right */
	if (passthrough) {
		return (FUNC1(FUNC5(dev), child,
		    type, rid, start, end, count, flags));
	}

	dinfo = FUNC4(child);
	rle = FUNC8(&dinfo->resources, type, *rid);

	if (rle == NULL && isdefault)
		return (NULL);	/* no resource of that type/rid */
	if (rle == NULL || rle->res == NULL) {
		/* XXX Need to adjust flags */
		r = FUNC3(dev, type, rid, start, end,
		  count, flags);
		if (r == NULL)
		    goto bad;
		FUNC7(&dinfo->resources, type, *rid,
		  FUNC11(r), FUNC10(r), count);
		rle = FUNC8(&dinfo->resources, type, *rid);
		if (!rle)
		    goto bad;
		rle->res = r;
	}
	/*
	 * If dev doesn't own the device, then we can't give this device
	 * out.
	 */
	if (FUNC9(rle->res) != dev)
		return (NULL);
	FUNC12(rle->res, child);
	if (flags & RF_ACTIVE)
		FUNC0(dev, child, type, *rid, rle->res);
	return (rle->res);
bad:;
	FUNC6(dev, "WARNING: Resource not reserved by pccard\n");
	return (NULL);
}