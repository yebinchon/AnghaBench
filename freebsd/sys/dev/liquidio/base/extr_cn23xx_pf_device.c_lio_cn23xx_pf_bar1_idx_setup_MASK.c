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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct octeon_device {int /*<<< orphan*/  pcie_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LIO_PCI_BAR1_MASK ; 
 void* FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int volatile,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct octeon_device *oct, uint64_t core_addr,
			     uint32_t idx, int valid)
{
	volatile uint64_t	bar1;
	uint64_t		reg_adr;

	if (!valid) {
		reg_adr = FUNC1(oct,
				FUNC0(oct->pcie_port,
							      idx));
		bar1 = reg_adr;
		FUNC2(oct, (bar1 & 0xFFFFFFFEULL),
			       FUNC0(oct->pcie_port,
							     idx));
		reg_adr = FUNC1(oct,
				FUNC0(oct->pcie_port,
							      idx));
		bar1 = reg_adr;
		return;
	}
	/*
	 *  The PEM(0..3)_BAR1_INDEX(0..15)[ADDR_IDX]<23:4> stores
	 *  bits <41:22> of the Core Addr
	 */
	FUNC2(oct, (((core_addr >> 22) << 4) | LIO_PCI_BAR1_MASK),
		       FUNC0(oct->pcie_port, idx));

	bar1 = FUNC1(oct, FUNC0(oct->pcie_port,
								idx));
}