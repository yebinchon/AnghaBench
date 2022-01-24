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
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 

int
FUNC4(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
	struct resource_list *		rl = NULL;

	if (FUNC2(child) != dev)
		return (FUNC1(FUNC2(dev), child,
		    type, rid, r));

	rl = FUNC0(dev, child);
	if (!rl)
		return (EINVAL);

	return (FUNC3(rl, dev, child, type, rid, r));
}