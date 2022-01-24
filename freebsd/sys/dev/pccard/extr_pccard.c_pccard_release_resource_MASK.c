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
struct resource_list_entry {int /*<<< orphan*/  res; } ;
struct resource {int dummy; } ;
struct pccard_ivar {int /*<<< orphan*/  resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int ENOENT ; 
 struct pccard_ivar* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct resource_list_entry* FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
	struct pccard_ivar *dinfo;
	int passthrough = (FUNC3(child) != dev);
	struct resource_list_entry *rle = NULL;

	if (passthrough)
		return FUNC1(FUNC3(dev), child,
		    type, rid, r);

	dinfo = FUNC2(child);

	rle = FUNC5(&dinfo->resources, type, rid);

	if (!rle) {
		FUNC4(dev, "Allocated resource not found, "
		    "%d %#x %#jx %#jx\n",
		    type, rid, FUNC7(r), FUNC6(r));
		return ENOENT;
	}
	if (!rle->res) {
		FUNC4(dev, "Allocated resource not recorded\n");
		return ENOENT;
	}
	/*
	 * Deactivate the resource (since it is being released), and
	 * assign it to the bus.
	 */
	FUNC0(dev, child, type, rid, rle->res);
	FUNC8(rle->res, dev);
	return (0);
}