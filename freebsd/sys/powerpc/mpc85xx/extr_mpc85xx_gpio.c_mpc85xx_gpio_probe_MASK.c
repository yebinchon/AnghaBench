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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  SPR_SVR ; 
#define  SVR_MPC8533 129 
#define  SVR_MPC8533E 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	uint32_t svr;

	if (!FUNC4(dev))
		return (ENXIO);

	if (!FUNC3(dev, "gpio"))
		return (ENXIO);

	svr = FUNC2(SPR_SVR);
	switch (FUNC0(svr)) {
	case SVR_MPC8533:
	case SVR_MPC8533E:
		break;
	default:
		return (ENXIO);
	}

	FUNC1(dev, "MPC85xx GPIO driver");
	return (0);
}