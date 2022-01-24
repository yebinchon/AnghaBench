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
#define  PCI_DEVICEID_TRMS1040 129 
#define  PCI_DEVICEID_TRMS2080 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
  	switch (FUNC1(dev)) {
	case PCI_DEVICEID_TRMS1040: 
		FUNC0(dev,
		    "Tekram DC395U/UW/F DC315/U Fast20 Wide SCSI Adapter");
		return (BUS_PROBE_DEFAULT);
	case PCI_DEVICEID_TRMS2080:
		FUNC0(dev,
		    "Tekram DC395U2D/U2W Fast40 Wide SCSI Adapter");
		return (BUS_PROBE_DEFAULT);
	default:
		return (ENXIO);
	}
}