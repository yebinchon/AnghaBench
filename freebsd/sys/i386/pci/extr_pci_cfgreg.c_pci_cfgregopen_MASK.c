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
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ CFGMECH_NONE ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ cfgmech ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  pcicfg_mtx ; 
 scalar_t__ FUNC4 () ; 

int
FUNC5(void)
{
	uint16_t v;
	static int opened = 0;

	if (opened)
		return (1);

	if (cfgmech == CFGMECH_NONE && FUNC4() == 0)
		return (0);

	v = FUNC3();
	if (v > 0)
		FUNC0(("pcibios: BIOS version %x.%02x\n", (v & 0xff00) >> 8,
		    v & 0xff));
	FUNC1(&pcicfg_mtx, "pcicfg", NULL, MTX_SPIN);
	opened = 1;

	/* $PIR requires PCI BIOS 2.10 or greater. */
	if (v >= 0x0210)
		FUNC2();

	return (1);
}