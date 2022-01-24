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
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  ffs_susp_cdevsw ; 
 int /*<<< orphan*/  ffs_susp_dev ; 
 int /*<<< orphan*/  ffs_susp_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void
FUNC2(void)
{

	FUNC1(&ffs_susp_lock, "ffs_susp");
	ffs_susp_dev = FUNC0(&ffs_susp_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
	    "ufssuspend");
}