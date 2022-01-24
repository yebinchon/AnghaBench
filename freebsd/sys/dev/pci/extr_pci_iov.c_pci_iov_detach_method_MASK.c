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
struct pcicfg_iov {scalar_t__ iov_num_vfs; int iov_flags; int /*<<< orphan*/  iov_schema; int /*<<< orphan*/ * iov_cdev; } ;
struct TYPE_2__ {struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  Giant ; 
 int IOV_BUSY ; 
 int /*<<< orphan*/  M_SRIOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pci_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcicfg_iov*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(device_t bus, device_t dev)
{
	struct pci_devinfo *dinfo;
	struct pcicfg_iov *iov;

	FUNC3(&Giant);
	dinfo = FUNC1(dev);
	iov = dinfo->cfg.iov;

	if (iov == NULL) {
		FUNC4(&Giant);
		return (0);
	}

	if (iov->iov_num_vfs != 0 || iov->iov_flags & IOV_BUSY) {
		FUNC4(&Giant);
		return (EBUSY);
	}

	dinfo->cfg.iov = NULL;

	if (iov->iov_cdev) {
		FUNC0(iov->iov_cdev);
		iov->iov_cdev = NULL;
	}
	FUNC5(iov->iov_schema);

	FUNC2(iov, M_SRIOV);
	FUNC4(&Giant);

	return (0);
}