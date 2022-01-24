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
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource_list* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC3 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct resource *
FUNC4(device_t dev, device_t child, int type,
    int *rid, rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct resource_list *		rl = NULL;

	if (FUNC2(child) != dev)
		return (FUNC0(FUNC2(dev), child,
		    type, rid, start, end, count, flags));

	rl = FUNC1(dev, child);
	if (!rl)
		return (NULL);

	return (FUNC3(rl, dev, child, type, rid,
	    start, end, count, flags));
}