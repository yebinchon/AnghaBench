#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {scalar_t__ chip_type; } ;
struct TYPE_4__ {TYPE_1__ cid; } ;

/* Variables and functions */
 scalar_t__ BHND_CHIPTYPE_SIBA ; 
 int BUS_PROBE_SPECIFIC ; 
 int ENXIO ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	int error;

	if (FUNC0()->cid.chip_type != BHND_CHIPTYPE_SIBA)
		return (ENXIO);

	if ((error = FUNC2(dev)) > 0)
		return (error);

	/* Set device description */
	FUNC1(dev, &FUNC0()->cid);

	return (BUS_PROBE_SPECIFIC);
}