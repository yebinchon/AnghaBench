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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 scalar_t__ VGA_PCI_BIOS_SHADOW_ADDR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

int
FUNC11(device_t dev)
{
#if defined(__amd64__) || defined(__i386__)
	x86regs_t regs;

	if (!FUNC6(dev))
		return (EINVAL);

	if (FUNC9(VGA_PCI_BIOS_SHADOW_ADDR) == NULL)
		return (ENOTSUP);

	FUNC10(&regs);

	regs.R_AH = FUNC3(dev);
	regs.R_AL = (FUNC5(dev) << 3) | (FUNC4(dev) & 0x07);
	regs.R_DL = 0x80;

	FUNC2(dev, "REPOSTing\n");
	FUNC7(&regs, FUNC1(VGA_PCI_BIOS_SHADOW_ADDR + 3),
	    FUNC0(VGA_PCI_BIOS_SHADOW_ADDR + 3));

	FUNC8(0x10);

	return (0);
#else
	return (ENOTSUP);
#endif
}