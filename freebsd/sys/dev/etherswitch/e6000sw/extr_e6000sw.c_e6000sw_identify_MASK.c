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
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC2(driver_t *driver, device_t parent)
{

	if (FUNC1(parent, "e6000sw", -1) == NULL)
		FUNC0(parent, 0, "e6000sw", -1);
}