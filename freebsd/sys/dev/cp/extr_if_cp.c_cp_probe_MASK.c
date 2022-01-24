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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ cp_device_id ; 
 scalar_t__ cp_vendor_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (device_t dev)
{
	if ((FUNC2 (dev) == cp_vendor_id) &&
	    (FUNC1 (dev) == cp_device_id)) {
		FUNC0 (dev, "Cronyx-Tau-PCI serial adapter");
		return BUS_PROBE_DEFAULT;
	}
	return ENXIO;
}