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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int PCIC_DISPLAY ; 
 int PCIS_DISPLAY_VGA ; 
 int PCI_S3_VENDOR_ID ; 
 int /*<<< orphan*/  S3_CONFIG_IO ; 
 int /*<<< orphan*/  S3_CONFIG_IO_SIZE ; 
 int /*<<< orphan*/  S3_ENHANCED_IO ; 
 int /*<<< orphan*/  S3_ENHANCED_IO_SIZE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	u_int32_t vendor, class, subclass, device_id;

	device_id = FUNC3(dev);
	vendor = device_id & 0xffff;
	class = FUNC2(dev);
	subclass = FUNC4(dev);

	if ((class != PCIC_DISPLAY) || (subclass != PCIS_DISPLAY_VGA) ||
		(vendor != PCI_S3_VENDOR_ID))
		return ENXIO;

	FUNC1(dev, "S3 graphic card");

	FUNC0(dev, SYS_RES_IOPORT, 0,
				S3_CONFIG_IO, S3_CONFIG_IO_SIZE);
	FUNC0(dev, SYS_RES_IOPORT, 1,
				S3_ENHANCED_IO, S3_ENHANCED_IO_SIZE);

	return BUS_PROBE_DEFAULT;

}