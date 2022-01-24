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
typedef  int u_long ;
struct hpt_iop_ioctl_param {int dummy; } ;
struct hpt_iop_hba {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  ioctl_thread_t ;
typedef  int /*<<< orphan*/  ioctl_dev_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int (* do_ioctl ) (struct hpt_iop_hba*,struct hpt_iop_ioctl_param*) ;} ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  Giant ; 
#define  HPT_DO_IOCONTROL 129 
#define  HPT_SCAN_BUS 128 
 struct hpt_iop_hba* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct hpt_iop_hba*,struct hpt_iop_ioctl_param*) ; 

__attribute__((used)) static int FUNC5(ioctl_dev_t dev, u_long cmd, caddr_t data,
					int flags, ioctl_thread_t proc)
{
	int ret = EFAULT;
	struct hpt_iop_hba *hba = FUNC0(dev);

	FUNC2(&Giant);

	switch (cmd) {
	case HPT_DO_IOCONTROL:
		ret = hba->ops->do_ioctl(hba,
				(struct hpt_iop_ioctl_param *)data);
		break;
	case HPT_SCAN_BUS:
		ret = FUNC1(hba);
		break;
	}

	FUNC3(&Giant);

	return ret;
}