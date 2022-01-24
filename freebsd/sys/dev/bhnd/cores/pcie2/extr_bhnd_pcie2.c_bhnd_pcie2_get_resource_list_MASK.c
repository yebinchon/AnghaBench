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
struct bhnd_pcie2_devinfo {struct resource_list resources; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 struct bhnd_pcie2_devinfo* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static struct resource_list *
FUNC2(device_t dev, device_t child)
{
	struct bhnd_pcie2_devinfo *dinfo;

	if (FUNC1(child) != dev)
		return (NULL);

	dinfo = FUNC0(child);
	return (&dinfo->resources);
}