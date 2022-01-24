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
struct ow_devinfo {int /*<<< orphan*/  romid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ow_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC4(device_t ndev, device_t pdev)
{
	int retval = 0;
	struct ow_devinfo *di;

	di = FUNC2(pdev);

	retval += FUNC1(ndev, pdev);
	retval += FUNC3(" romid %8D", &di->romid, ":");
	retval += FUNC0(ndev, pdev);

	return retval;
}