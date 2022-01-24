#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct pcicfg_iov {int iov_flags; scalar_t__ iov_num_vfs; int /*<<< orphan*/  rman; TYPE_2__* iov_bar; scalar_t__ iov_pos; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
struct cdev {struct pci_devinfo* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * res; } ;

/* Variables and functions */
 int EBUSY ; 
 int ECHILD ; 
 int /*<<< orphan*/  Giant ; 
 int IOV_BUSY ; 
 int FUNC0 (struct pci_devinfo*,int /*<<< orphan*/ ,int) ; 
 int IOV_RMAN_INITED ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinfo*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int PCIM_SRIOV_VF_EN ; 
 int PCIM_SRIOV_VF_MSE ; 
 int PCIR_MAX_BAR_0 ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  PCIR_SRIOV_CTL ; 
 int /*<<< orphan*/  PCIR_SRIOV_NUM_VFS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (struct pcicfg_iov*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(struct cdev *cdev)
{
	device_t bus, dev, vf, *devlist;
	struct pci_devinfo *dinfo;
	struct pcicfg_iov *iov;
	int i, error, devcount;
	uint32_t iov_ctl;

	FUNC11(&Giant);
	dinfo = cdev->si_drv1;
	iov = dinfo->cfg.iov;
	dev = dinfo->cfg.dev;
	bus = FUNC8(dev);
	devlist = NULL;

	if (iov->iov_flags & IOV_BUSY) {
		FUNC12(&Giant);
		return (EBUSY);
	}

	if (iov->iov_num_vfs == 0) {
		FUNC12(&Giant);
		return (ECHILD);
	}

	iov->iov_flags |= IOV_BUSY;

	error = FUNC6(bus, &devlist, &devcount);

	if (error != 0)
		goto out;

	for (i = 0; i < devcount; i++) {
		vf = devlist[i];

		if (!FUNC14(iov, vf))
			continue;

		error = FUNC5(vf);
		if (error != 0) {
			FUNC9(dev,
			   "Could not disable SR-IOV: failed to detach VF %s\n",
			    FUNC7(vf));
			goto out;
		}
	}

	for (i = 0; i < devcount; i++) {
		vf = devlist[i];

		if (FUNC14(iov, vf))
			FUNC4(bus, vf);
	}
	FUNC3(dev);

	iov_ctl = FUNC0(dinfo, PCIR_SRIOV_CTL, 2);
	iov_ctl &= ~(PCIM_SRIOV_VF_EN | PCIM_SRIOV_VF_MSE);
	FUNC1(dinfo, PCIR_SRIOV_CTL, iov_ctl, 2);
	FUNC1(dinfo, PCIR_SRIOV_NUM_VFS, 0, 2);

	iov->iov_num_vfs = 0;

	for (i = 0; i <= PCIR_MAX_BAR_0; i++) {
		if (iov->iov_bar[i].res != NULL) {
			FUNC15(bus, dev, SYS_RES_MEMORY,
			    iov->iov_pos + FUNC2(i),
			    iov->iov_bar[i].res);
			FUNC13(bus, dev, SYS_RES_MEMORY,
			    iov->iov_pos + FUNC2(i));
			iov->iov_bar[i].res = NULL;
		}
	}

	if (iov->iov_flags & IOV_RMAN_INITED) {
		FUNC16(&iov->rman);
		iov->iov_flags &= ~IOV_RMAN_INITED;
	}

	error = 0;
out:
	FUNC10(devlist, M_TEMP);
	iov->iov_flags &= ~IOV_BUSY;
	FUNC12(&Giant);
	return (error);
}