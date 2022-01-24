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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_VENDOR_AMD ; 
 int DRAM_ECC_EN ; 
 int ENXIO ; 
 int /*<<< orphan*/  NB_MCA_CFG ; 
 int /*<<< orphan*/  cpu_id ; 
 scalar_t__ cpu_vendor_id ; 
 int /*<<< orphan*/ * nbdev ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	uint32_t val;

	if (cpu_vendor_id != CPU_VENDOR_AMD || FUNC0(cpu_id) < 0x10) {
		FUNC3("DRAM ECC error injection is not supported\n");
		return (ENXIO);
	}
	nbdev = FUNC1(0, 24, 3);
	if (nbdev == NULL) {
		FUNC3("Couldn't find NB PCI device\n");
		return (ENXIO);
	}
	val = FUNC2(nbdev, NB_MCA_CFG, 4);
	if ((val & DRAM_ECC_EN) == 0) {
		FUNC3("DRAM ECC is not supported or disabled\n");
		return (ENXIO);
	}
	FUNC3("DRAM ECC error injection support loaded\n");
	return (0);
}