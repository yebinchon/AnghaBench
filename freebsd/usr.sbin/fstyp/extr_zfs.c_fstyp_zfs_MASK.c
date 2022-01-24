#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vp_nvlist; } ;
typedef  TYPE_1__ vdev_phys_t ;
struct TYPE_5__ {TYPE_1__ vl_vdev_phys; } ;
typedef  TYPE_2__ vdev_label_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

int
FUNC6(FILE *fp, char *label, size_t labelsize)
{
	vdev_label_t *vdev_label = NULL;
	vdev_phys_t *vdev_phys;
	char *zpool_name = NULL;
	nvlist_t *config = NULL;
	int err = 0;

	/*
	 * Read in the first ZFS vdev label ("L0"), located at the beginning
	 * of the vdev and extract the pool name from it.
	 *
	 * TODO: the checksum of label should be validated.
	 */
	vdev_label = (vdev_label_t *)FUNC4(fp, 0, sizeof(*vdev_label));
	if (vdev_label == NULL)
		return (1);

	vdev_phys = &(vdev_label->vl_vdev_phys);

	if ((FUNC3(vdev_phys->vp_nvlist, sizeof(vdev_phys->vp_nvlist),
	    &config, 0)) == 0 &&
	    (FUNC2(config, "name", &zpool_name) == 0)) {
		FUNC5(label, zpool_name, labelsize);
	} else
		err = 1;

	FUNC1(config);
	FUNC0(vdev_label);

	return (err);
}