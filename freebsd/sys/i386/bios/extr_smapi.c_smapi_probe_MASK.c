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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (device_t dev)
{
	struct resource *res;
	int rid;
	int error;

	error = 0;
	rid = 0;
	res = FUNC1(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (res == NULL) {
		FUNC3(dev, "Unable to allocate memory resource.\n");
		error = ENOMEM;
		goto bad;
	}

	if (FUNC4(FUNC0(res))) {
		FUNC3(dev, "SMAPI header checksum failed.\n");
		error = ENXIO;
		goto bad;
	}

bad:
	if (res)
		FUNC2(dev, SYS_RES_MEMORY, rid, res);
	return (error);
}