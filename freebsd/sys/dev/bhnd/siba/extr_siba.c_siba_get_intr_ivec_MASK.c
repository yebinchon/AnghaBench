#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_2__ {int intr_en; scalar_t__ intr_flag; } ;
struct siba_devinfo {TYPE_1__ core_id; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct siba_devinfo* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

int
FUNC5(device_t dev, device_t child, u_int intr, u_int *ivec)
{
	struct siba_devinfo	*dinfo;

	/* delegate non-bus-attached devices to our parent */
	if (FUNC3(child) != dev)
		return (FUNC0(FUNC3(dev), child,
		    intr, ivec));

	/* Must be a valid interrupt ID */
	if (intr >= FUNC4(dev, child))
		return (ENXIO);

	FUNC1(intr == 0, ("invalid ivec %u", intr));

	dinfo = FUNC2(child);

	FUNC1(dinfo->core_id.intr_en,
	    ("core does not have an interrupt assigned"));

	*ivec = dinfo->core_id.intr_flag;
	return (0);
}