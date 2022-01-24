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
typedef  int /*<<< orphan*/  uint32_t ;
struct pcicfg_iov {int iov_pos; TYPE_2__* iov_cdev; int /*<<< orphan*/ * iov_schema; } ;
struct TYPE_3__ {struct pcicfg_iov* iov; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {struct pci_devinfo* si_drv1; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_SRIOV ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PCIZ_SRIOV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ bootverbose ; 
 struct pci_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pcicfg_iov*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iov_cdevsw ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*) ; 
 struct pcicfg_iov* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC15(device_t bus, device_t dev, nvlist_t *pf_schema,
    nvlist_t *vf_schema, const char *name)
{
	device_t pcib;
	struct pci_devinfo *dinfo;
	struct pcicfg_iov *iov;
	nvlist_t *schema;
	uint32_t version;
	int error;
	int iov_pos;

	dinfo = FUNC1(dev);
	pcib = FUNC2(bus);
	schema = NULL;
	
	error = FUNC11(dev, PCIZ_SRIOV, &iov_pos);

	if (error != 0)
		return (error);

	version = FUNC14(dev, iov_pos, 4); 
	if (FUNC0(version) != 1) {
		if (bootverbose)
			FUNC4(dev, 
			    "Unsupported version of SR-IOV (%d) detected\n",
			    FUNC0(version));

		return (ENXIO);
	}

	iov = FUNC7(sizeof(*dinfo->cfg.iov), M_SRIOV, M_WAITOK | M_ZERO);

	FUNC8(&Giant);
	if (dinfo->cfg.iov != NULL) {
		error = EBUSY;
		goto cleanup;
	}
	iov->iov_pos = iov_pos;

	schema = FUNC12(&pf_schema, &vf_schema);
	if (schema == NULL) {
		error = ENOMEM;
		goto cleanup;
	}

	error = FUNC13(schema);
	if (error != 0)
		goto cleanup;
	iov->iov_schema = schema;

	iov->iov_cdev = FUNC6(&iov_cdevsw, FUNC3(dev),
	    UID_ROOT, GID_WHEEL, 0600, "iov/%s", name);

	if (iov->iov_cdev == NULL) {
		error = ENOMEM;
		goto cleanup;
	}
	
	dinfo->cfg.iov = iov;
	iov->iov_cdev->si_drv1 = dinfo;
	FUNC9(&Giant);

	return (0);

cleanup:
	FUNC10(schema);
	FUNC10(pf_schema);
	FUNC10(vf_schema);
	FUNC5(iov, M_SRIOV);
	FUNC9(&Giant);
	return (error);
}