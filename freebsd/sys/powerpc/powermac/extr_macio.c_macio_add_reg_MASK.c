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
struct macio_reg {scalar_t__ mr_base; scalar_t__ mr_size; } ;
struct macio_devinfo {int /*<<< orphan*/  mdi_resources; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  layout_id ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,...) ; 
 int FUNC2 (scalar_t__,char*,int,void**) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7(phandle_t devnode, struct macio_devinfo *dinfo)
{
	struct		macio_reg *reg, *regp;
	phandle_t 	child;
	char		buf[8];
	int		i, layout_id = 0, nreg, res;

	nreg = FUNC2(devnode, "reg", sizeof(*reg), (void **)&reg);
	if (nreg == -1)
		return;

        /*
         *  Some G5's have broken properties in the i2s-a area. If so we try
         *  to fix it. Right now we know of two different cases, one for
         *  sound layout-id 36 and the other one for sound layout-id 76.
         *  What is missing is the base address for the memory addresses.
         *  We take them from the parent node (i2s) and use the size
         *  information from the child. 
         */

        if (reg[0].mr_base == 0) {
		child = FUNC0(devnode);
		while (child != 0) {
			res = FUNC1(child, "name", buf, sizeof(buf));
			if (res > 0 && FUNC6(buf, "sound") == 0)
				break;
			child = FUNC4(child);
		}

                res = FUNC1(child, "layout-id", &layout_id,
				sizeof(layout_id));

                if (res > 0 && (layout_id == 36 || layout_id == 76)) {
                        res = FUNC2(FUNC3(devnode), "reg",
						sizeof(*regp), (void **)&regp);
                        reg[0] = regp[0];
                        reg[1].mr_base = regp[1].mr_base;
                        reg[2].mr_base = regp[1].mr_base + reg[1].mr_size;
                }
        } 

	for (i = 0; i < nreg; i++) {
		FUNC5(&dinfo->mdi_resources, SYS_RES_MEMORY, i,
		    reg[i].mr_base, reg[i].mr_base + reg[i].mr_size,
		    reg[i].mr_size);
	}
}