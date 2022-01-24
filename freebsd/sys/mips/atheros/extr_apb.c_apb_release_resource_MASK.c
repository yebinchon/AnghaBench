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
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC1 (struct resource_list*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
	struct resource_list *rl;
	struct resource_list_entry *rle;

	rl = FUNC0(dev, child);
	if (rl == NULL)
		return (EINVAL);
	rle = FUNC1(rl, type, rid);
	if (rle == NULL)
		return (EINVAL);
	FUNC2(r);
	rle->res = NULL;

	return (0);
}