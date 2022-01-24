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
struct sglist {int dummy; } ;
struct nvdimm_spa_dev {int /*<<< orphan*/ * spa_g; int /*<<< orphan*/  spa_dev; int /*<<< orphan*/ * spa_obj; int /*<<< orphan*/  spa_len; int /*<<< orphan*/  spa_phys_base; int /*<<< orphan*/ * spa_kva; int /*<<< orphan*/  spa_memattr; } ;
struct make_dev_args {int mda_flags; int mda_mode; int mda_unit; struct nvdimm_spa_dev* mda_si_drv1; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_cr; int /*<<< orphan*/ * mda_devsw; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MAKEDEV_CHECKNAME ; 
 int MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  M_NVDIMM ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  OBJT_SG ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct make_dev_args*) ; 
 int FUNC3 (struct make_dev_args*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct nvdimm_spa_dev*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 struct sglist* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sglist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sglist*) ; 
 int /*<<< orphan*/  spa_cdevsw ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,struct sglist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC11(struct nvdimm_spa_dev *dev, const char *name, int unit)
{
	struct make_dev_args mda;
	struct sglist *spa_sg;
	char *devname;
	int error, error1;

	error1 = FUNC5(dev->spa_phys_base, dev->spa_len,
	    &dev->spa_kva, dev->spa_memattr);
	if (error1 != 0) {
		FUNC6("NVDIMM %s cannot map into KVA, error %d\n", name,
		    error1);
		dev->spa_kva = NULL;
	}

	spa_sg = FUNC7(1, M_WAITOK);
	error = FUNC8(spa_sg, dev->spa_phys_base,
	    dev->spa_len);
	if (error == 0) {
		dev->spa_obj = FUNC10(OBJT_SG, spa_sg, dev->spa_len,
		    VM_PROT_ALL, 0, NULL);
		if (dev->spa_obj == NULL) {
			FUNC6("NVDIMM %s failed to alloc vm object", name);
			FUNC9(spa_sg);
		}
	} else {
		FUNC6("NVDIMM %s failed to init sglist, error %d", name,
		    error);
		FUNC9(spa_sg);
	}

	FUNC2(&mda);
	mda.mda_flags = MAKEDEV_WAITOK | MAKEDEV_CHECKNAME;
	mda.mda_devsw = &spa_cdevsw;
	mda.mda_cr = NULL;
	mda.mda_uid = UID_ROOT;
	mda.mda_gid = GID_OPERATOR;
	mda.mda_mode = 0660;
	mda.mda_si_drv1 = dev;
	mda.mda_unit = unit;
	FUNC0(&devname, M_NVDIMM, "nvdimm_%s", name);
	error = FUNC3(&mda, &dev->spa_dev, "%s", devname);
	FUNC1(devname, M_NVDIMM);
	if (error != 0) {
		FUNC6("NVDIMM %s cannot create devfs node, error %d\n", name,
		    error);
		if (error1 == 0)
			error1 = error;
	}
	dev->spa_g = FUNC4(dev, name);
	if (dev->spa_g == NULL && error1 == 0)
		error1 = ENXIO;
	return (error1);
}