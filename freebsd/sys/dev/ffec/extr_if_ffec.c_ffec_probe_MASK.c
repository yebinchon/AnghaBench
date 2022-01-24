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
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {uintptr_t ocd_data; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 uintptr_t FECFLAG_GBE ; 
 uintptr_t FECTYPE_NONE ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	uintptr_t fectype;

	if (!FUNC2(dev))
		return (ENXIO);

	fectype = FUNC1(dev, compat_data)->ocd_data;
	if (fectype == FECTYPE_NONE)
		return (ENXIO);

	FUNC0(dev, (fectype & FECFLAG_GBE) ?
	    "Freescale Gigabit Ethernet Controller" :
	    "Freescale Fast Ethernet Controller");

	return (BUS_PROBE_DEFAULT);
}