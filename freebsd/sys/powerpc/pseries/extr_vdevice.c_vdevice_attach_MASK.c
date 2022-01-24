#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  obd_name; } ;
struct vdevice_devinfo {TYPE_1__ mdi_obdinfo; int /*<<< orphan*/  mdi_resources; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct vdevice_devinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct vdevice_devinfo*,int /*<<< orphan*/ ) ; 
 struct vdevice_devinfo* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_pic ; 

__attribute__((used)) static int 
FUNC15(device_t dev) 
{
	phandle_t root, child;
	device_t cdev;
	struct vdevice_devinfo *dinfo;

	root = FUNC11(dev);

	/* The XICP (root PIC) will handle all our interrupts */
	FUNC13(root_pic, FUNC2(root),
	    1 << 24 /* 24-bit XIRR field */, 1 /* Number of IPIs */, FALSE);

	for (child = FUNC0(root); child != 0; child = FUNC1(child)) {
		dinfo = FUNC8(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);

                if (FUNC10(&dinfo->mdi_obdinfo,
		    child) != 0) {
                        FUNC7(dinfo, M_DEVBUF);
                        continue;
                }
		FUNC14(&dinfo->mdi_resources);

		FUNC12(dev, child, &dinfo->mdi_resources, NULL);

                cdev = FUNC4(dev, NULL, -1);
                if (cdev == NULL) {
                        FUNC5(dev, "<%s>: device_add_child failed\n",
                            dinfo->mdi_obdinfo.obd_name);
                        FUNC9(&dinfo->mdi_obdinfo);
                        FUNC7(dinfo, M_DEVBUF);
                        continue;
                }
		FUNC6(cdev, dinfo);
	}

	return (FUNC3(dev));
}