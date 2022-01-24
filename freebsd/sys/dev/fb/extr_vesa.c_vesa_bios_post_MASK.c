#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int R_AL; int R_DL; int /*<<< orphan*/  R_AH; } ;
typedef  TYPE_1__ x86regs_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 char* VGA_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ vesa_bios_offs ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(void)
{
	x86regs_t regs;
	devclass_t dc;
	device_t *devs;
	device_t dev;
	int count, i, is_pci;

	if (FUNC14(vesa_bios_offs) == NULL)
		return (1);

	dev = NULL;
	is_pci = 0;

	/* Find the matching PCI video controller. */
	dc = FUNC2("vgapci");
	if (dc != NULL && FUNC4(dc, &devs, &count) == 0) {
		for (i = 0; i < count; i++)
			if (FUNC5(devs[i]) != 0 &&
			    FUNC16(vesa_bios_offs, devs[i])) {
				dev = devs[i];
				is_pci = 1;
				break;
			}
		FUNC7(devs, M_TEMP);
	}

	/* Try VGA if a PCI device is not found. */
	if (dev == NULL) {
		dc = FUNC2(VGA_DRIVER_NAME);
		if (dc != NULL)
			dev = FUNC3(dc, 0);
	}

	if (bootverbose)
		FUNC11("%s: calling BIOS POST\n",
		    dev == NULL ? "VESA" : FUNC6(dev));

	FUNC15(&regs);
	if (is_pci) {
		regs.R_AH = FUNC8(dev);
		regs.R_AL = (FUNC10(dev) << 3) |
		    (FUNC9(dev) & 0x07);
	}
	regs.R_DL = 0x80;
	FUNC12(&regs, FUNC1(vesa_bios_offs + 3),
	    FUNC0(vesa_bios_offs + 3));

	if (FUNC13(0x10) == 0)
		return (1);

	return (0);
}