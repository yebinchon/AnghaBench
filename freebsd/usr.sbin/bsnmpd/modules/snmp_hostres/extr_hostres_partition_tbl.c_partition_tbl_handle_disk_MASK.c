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
struct gmesh {int dummy; } ;
struct gclass {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct gclass* FUNC2 (struct gmesh*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct gmesh*) ; 
 int FUNC4 (struct gmesh*) ; 
 int /*<<< orphan*/  FUNC5 (struct gclass*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct gclass*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void
FUNC8(int32_t ds_index, const char *disk_dev_name)
{
	struct gmesh mesh;	/* GEOM userland tree */
	struct gclass *classp;
	int error;

	FUNC1(disk_dev_name != NULL);
	FUNC1(ds_index > 0);

	FUNC0("===> getting partitions for %s <===", disk_dev_name);

	/* try to construct the GEOM tree */
	if ((error = FUNC4(&mesh)) != 0) {
		FUNC7(LOG_WARNING, "cannot get GEOM tree: %m");
		return;
	}

	/*
	 * First try the GEOM "MBR" class.
	 * This is needed for non-BSD slices (aka partitions)
	 * on PC architectures.
	 */
	if ((classp = FUNC2(&mesh, "MBR")) != NULL) {
		FUNC6(classp, ds_index, disk_dev_name);
	} else {
		FUNC0("cannot find \"MBR\" geom class");
	}

	/*
	 * Get the "BSD" GEOM class.
	 * Here we'll find all the info needed about the BSD slices.
	 */
	if ((classp = FUNC2(&mesh, "BSD")) != NULL) {
		FUNC5(classp, ds_index, disk_dev_name);
	} else {
		/* no problem on sparc64 */
		FUNC0("cannot find \"BSD\" geom class");
	}

	/*
	 * Get the "SUN" GEOM class.
	 * Here we'll find all the info needed about the BSD slices.
	 */
	if ((classp = FUNC2(&mesh, "SUN")) != NULL) {
		FUNC5(classp, ds_index, disk_dev_name);
	} else {
		/* no problem on i386 */
		FUNC0("cannot find \"SUN\" geom class");
	}

	FUNC3(&mesh);
}