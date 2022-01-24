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
typedef  int uint16_t ;
struct pcicfg_iov {int iov_flags; int iov_num_vfs; int /*<<< orphan*/  rman; TYPE_2__* iov_bar; scalar_t__ iov_pos; } ;
struct pci_iov_arg {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
struct cdev {struct pci_devinfo* si_drv1; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * res; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  Giant ; 
 int IOV_BUSY ; 
 int FUNC0 (struct pci_devinfo*,int /*<<< orphan*/ ,int) ; 
 int IOV_RMAN_INITED ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinfo*,int /*<<< orphan*/ ,int,int) ; 
 int PCIM_SRIOV_VF_EN ; 
 int PCIM_SRIOV_VF_MSE ; 
 int PCIR_MAX_BAR_0 ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  PCIR_SRIOV_CTL ; 
 int /*<<< orphan*/  PCIR_SRIOV_NUM_VFS ; 
 int /*<<< orphan*/  PCIR_SRIOV_TOTAL_VFS ; 
 int /*<<< orphan*/  PCIR_SRIOV_VF_OFF ; 
 int /*<<< orphan*/  PCIR_SRIOV_VF_STRIDE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_devinfo*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct pcicfg_iov*) ; 
 int FUNC18 (struct pcicfg_iov*,struct pci_iov_arg*,int /*<<< orphan*/ **) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC24(struct cdev *cdev, struct pci_iov_arg *arg)
{
	device_t bus, dev;
	struct pci_devinfo *dinfo;
	struct pcicfg_iov *iov;
	nvlist_t *config;
	int i, error;
	uint16_t rid_off, rid_stride;
	uint16_t first_rid, last_rid;
	uint16_t iov_ctl;
	uint16_t num_vfs, total_vfs;
	int iov_inited;

	FUNC6(&Giant);
	dinfo = cdev->si_drv1;
	iov = dinfo->cfg.iov;
	dev = dinfo->cfg.dev;
	bus = FUNC5(dev);
	iov_inited = 0;
	config = NULL;

	if ((iov->iov_flags & IOV_BUSY) || iov->iov_num_vfs != 0) {
		FUNC7(&Giant);
		return (EBUSY);
	}
	iov->iov_flags |= IOV_BUSY;

	error = FUNC18(iov, arg, &config);
	if (error != 0)
		goto out;

	num_vfs = FUNC13(config);
	total_vfs = FUNC0(dinfo, PCIR_SRIOV_TOTAL_VFS, 2);
	if (num_vfs > total_vfs) {
		error = EINVAL;
		goto out;
	}

	error = FUNC14(dinfo);
	if (error != 0)
		goto out;

	error = FUNC19(bus);
	if (error != 0)
		goto out;

	error = FUNC16(dev, num_vfs, config);
	if (error != 0)
		goto out;
	iov_inited = 1;

	FUNC1(dinfo, PCIR_SRIOV_NUM_VFS, num_vfs, 2);

	rid_off = FUNC0(dinfo, PCIR_SRIOV_VF_OFF, 2);
	rid_stride = FUNC0(dinfo, PCIR_SRIOV_VF_STRIDE, 2);

	first_rid = FUNC12(dev) + rid_off;
	last_rid = first_rid + (num_vfs - 1) * rid_stride;

	/* We don't yet support allocating extra bus numbers for VFs. */
	if (FUNC11(dev) != FUNC4(last_rid)) {
		error = ENOSPC;
		goto out;
	}

	iov_ctl = FUNC0(dinfo, PCIR_SRIOV_CTL, 2);
	iov_ctl &= ~(PCIM_SRIOV_VF_EN | PCIM_SRIOV_VF_MSE);
	FUNC1(dinfo, PCIR_SRIOV_CTL, iov_ctl, 2);

	error = FUNC17(dev, iov);
	if (error != 0)
		goto out;

	iov->iov_num_vfs = num_vfs;

	error = FUNC20(dinfo);
	if (error != 0)
		goto out;

	iov_ctl = FUNC0(dinfo, PCIR_SRIOV_CTL, 2);
	iov_ctl |= PCIM_SRIOV_VF_EN | PCIM_SRIOV_VF_MSE;
	FUNC1(dinfo, PCIR_SRIOV_CTL, iov_ctl, 2);

	/* Per specification, we must wait 100ms before accessing VFs. */
	FUNC9("iov", FUNC23(hz, 10));
	FUNC15(dinfo, config, first_rid, rid_stride);

	FUNC8(config);
	iov->iov_flags &= ~IOV_BUSY;
	FUNC7(&Giant);

	return (0);
out:
	if (iov_inited)
		FUNC3(dev);

	for (i = 0; i <= PCIR_MAX_BAR_0; i++) {
		if (iov->iov_bar[i].res != NULL) {
			FUNC21(bus, dev, SYS_RES_MEMORY,
			    iov->iov_pos + FUNC2(i),
			    iov->iov_bar[i].res);
			FUNC10(bus, dev, SYS_RES_MEMORY,
			    iov->iov_pos + FUNC2(i));
			iov->iov_bar[i].res = NULL;
		}
	}

	if (iov->iov_flags & IOV_RMAN_INITED) {
		FUNC22(&iov->rman);
		iov->iov_flags &= ~IOV_RMAN_INITED;
	}

	FUNC8(config);
	iov->iov_num_vfs = 0;
	iov->iov_flags &= ~IOV_BUSY;
	FUNC7(&Giant);
	return (error);
}