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
 scalar_t__ GDT_DEVICE_ID_MAX ; 
 scalar_t__ GDT_DEVICE_ID_MIN ; 
 scalar_t__ GDT_DEVICE_ID_NEWRX ; 
 scalar_t__ GDT_VENDOR_ID ; 
 scalar_t__ INTEL_DEVICE_ID_IIR ; 
 scalar_t__ INTEL_VENDOR_ID_IIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
    if (FUNC2(dev) == INTEL_VENDOR_ID_IIR &&
        FUNC1(dev) == INTEL_DEVICE_ID_IIR) {
        FUNC0(dev, "Intel Integrated RAID Controller");
        return (BUS_PROBE_DEFAULT);
    }
    if (FUNC2(dev) == GDT_VENDOR_ID &&
        ((FUNC1(dev) >= GDT_DEVICE_ID_MIN &&
        FUNC1(dev) <= GDT_DEVICE_ID_MAX) ||
        FUNC1(dev) == GDT_DEVICE_ID_NEWRX)) {
        FUNC0(dev, "ICP Disk Array Controller");
        return (BUS_PROBE_DEFAULT);
    }
    return (ENXIO);
}