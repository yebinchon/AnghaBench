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
struct TYPE_2__ {int ocd_data; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
#define  HWTYPE_ESDHC 129 
#define  HWTYPE_USDHC 128 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{

	if (!FUNC2(dev))
		return (ENXIO);

	switch (FUNC1(dev, compat_data)->ocd_data) {
	case HWTYPE_ESDHC:
		FUNC0(dev, "Freescale eSDHC controller");
		return (BUS_PROBE_DEFAULT);
	case HWTYPE_USDHC:
		FUNC0(dev, "Freescale uSDHC controller");
		return (BUS_PROBE_DEFAULT);
	default:
		break;
	}
	return (ENXIO);
}