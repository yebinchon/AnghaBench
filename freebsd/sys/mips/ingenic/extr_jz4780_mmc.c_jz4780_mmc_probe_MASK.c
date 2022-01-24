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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{

	if (!FUNC3(dev))
		return (ENXIO);
	if (!FUNC2(dev, "ingenic,jz4780-mmc"))
		return (ENXIO);
	if (FUNC0(dev) > 0) /* XXXKAN */
		return (ENXIO);
	FUNC1(dev, "Ingenic JZ4780 Integrated MMC/SD controller");

	return (BUS_PROBE_DEFAULT);
}