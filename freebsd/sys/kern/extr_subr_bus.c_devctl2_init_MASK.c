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

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MAKEDEV_ETERNAL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  devctl2_cdevsw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static void
FUNC1(void)
{

	FUNC0(MAKEDEV_ETERNAL, &devctl2_cdevsw, 0, NULL,
	    UID_ROOT, GID_WHEEL, 0600, "devctl2");
}