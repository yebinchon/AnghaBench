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
 scalar_t__ GCTL_PARAM_RD ; 
 scalar_t__ GCTL_PARAM_WR ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MAKEDEV_ETERNAL ; 
 int /*<<< orphan*/  PATH_GEOM_CTL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ VM_PROT_READ ; 
 scalar_t__ VM_PROT_WRITE ; 
 int /*<<< orphan*/  g_ctl_cdevsw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{

	FUNC1(MAKEDEV_ETERNAL, &g_ctl_cdevsw, 0, NULL,
	    UID_ROOT, GID_OPERATOR, 0640, PATH_GEOM_CTL);
	FUNC0(GCTL_PARAM_RD == VM_PROT_READ,
		("GCTL_PARAM_RD != VM_PROT_READ"));
	FUNC0(GCTL_PARAM_WR == VM_PROT_WRITE,
		("GCTL_PARAM_WR != VM_PROT_WRITE"));
}