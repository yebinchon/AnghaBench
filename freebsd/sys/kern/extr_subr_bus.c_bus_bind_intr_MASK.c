#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
typedef  TYPE_1__* device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,struct resource*,int) ; 
 int EINVAL ; 

int
FUNC1(device_t dev, struct resource *r, int cpu)
{
	if (dev->parent == NULL)
		return (EINVAL);
	return (FUNC0(dev->parent, dev, r, cpu));
}