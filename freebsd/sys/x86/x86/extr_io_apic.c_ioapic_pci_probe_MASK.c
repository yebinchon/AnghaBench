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
 int ENXIO ; 
 scalar_t__ PCIC_BASEPERIPH ; 
#define  PCIP_BASEPERIPH_PIC_IOX_APIC 129 
#define  PCIP_BASEPERIPH_PIC_IO_APIC 128 
 scalar_t__ PCIS_BASEPERIPH_PIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{

	if (FUNC2(dev) == PCIC_BASEPERIPH &&
	    FUNC4(dev) == PCIS_BASEPERIPH_PIC) {
		switch (FUNC3(dev)) {
		case PCIP_BASEPERIPH_PIC_IO_APIC:
			FUNC1(dev, "IO APIC");
			break;
		case PCIP_BASEPERIPH_PIC_IOX_APIC:
			FUNC1(dev, "IO(x) APIC");
			break;
		default:
			return (ENXIO);
		}
		FUNC0(dev);
		return (-10000);
	}
	return (ENXIO);
}