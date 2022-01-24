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
 struct ow_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC2(device_t ndev, device_t pdev)
{
	struct ow_devinfo *di;

	di = FUNC0(pdev);
	FUNC1(ndev, "romid %8D: no driver\n", &di->romid, ":");
}