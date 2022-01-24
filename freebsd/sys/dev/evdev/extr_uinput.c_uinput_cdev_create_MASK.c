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
struct make_dev_args {int mda_flags; int mda_mode; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_devsw; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int MAKEDEV_CHECKNAME ; 
 int MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (struct make_dev_args*) ; 
 int FUNC1 (struct make_dev_args*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  uinput_cdev ; 
 int /*<<< orphan*/  uinput_cdevsw ; 

__attribute__((used)) static int
FUNC2(void)
{
	struct make_dev_args mda;
	int ret;

	FUNC0(&mda);
	mda.mda_flags = MAKEDEV_WAITOK | MAKEDEV_CHECKNAME;
	mda.mda_devsw = &uinput_cdevsw;
	mda.mda_uid = UID_ROOT;
	mda.mda_gid = GID_WHEEL;
	mda.mda_mode = 0600;

	ret = FUNC1(&mda, &uinput_cdev, "uinput");

	return (ret);
}