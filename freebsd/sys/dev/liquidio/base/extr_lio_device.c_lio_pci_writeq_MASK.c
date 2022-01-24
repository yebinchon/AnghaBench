#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  pci_win_wr_data_lo; int /*<<< orphan*/  pci_win_wr_data_hi; int /*<<< orphan*/  pci_win_wr_addr; } ;
struct octeon_device {int /*<<< orphan*/  pci_win_lock; TYPE_1__ reg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct octeon_device *oct, uint64_t val, uint64_t addr)
{
	volatile uint32_t	val32;

	FUNC3(&oct->pci_win_lock);

	FUNC2(oct, oct->reg_list.pci_win_wr_addr, addr);

	/* The write happens when the LSB is written. So write MSB first. */
	FUNC1(oct, oct->reg_list.pci_win_wr_data_hi, val >> 32);
	/* Read the MSB to ensure ordering of writes. */
	val32 = FUNC0(oct, oct->reg_list.pci_win_wr_data_hi);

	FUNC1(oct, oct->reg_list.pci_win_wr_data_lo,
			val & 0xffffffff);

	FUNC4(&oct->pci_win_lock);
}