#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int (* bar1_idx_read ) (struct octeon_device*,int) ;int /*<<< orphan*/  (* bar1_idx_write ) (struct octeon_device*,int,int) ;int /*<<< orphan*/  (* bar1_idx_setup ) (struct octeon_device*,int,int,int) ;} ;
struct TYPE_3__ {int dram_region_base; int bar1_index; } ;
struct octeon_device {int /*<<< orphan*/  mem_access_lock; TYPE_2__ fn_list; TYPE_1__ console_nb_info; } ;

/* Variables and functions */
 int MEMOPS_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct octeon_device *oct, uint64_t addr,
		    uint8_t *hostbuf, uint32_t len, uint32_t op)
{
	uint64_t	static_mapping_base;
	uint32_t	copy_len = 0, index_reg_val = 0;
	uint32_t	offset;

	static_mapping_base = oct->console_nb_info.dram_region_base;

	if (static_mapping_base && static_mapping_base ==
	    (addr & 0xFFFFFFFFFFC00000ULL)) {
		int	bar1_index = oct->console_nb_info.bar1_index;

		offset = (bar1_index << 22) + (addr & 0x3fffff);

		if (op)
			FUNC0(oct, offset, hostbuf, len);
		else
			FUNC1(oct, offset, hostbuf, len);

		return;
	}
	FUNC2(&oct->mem_access_lock);

	/* Save the original index reg value. */
	index_reg_val = oct->fn_list.bar1_idx_read(oct, MEMOPS_IDX);
	do {
		oct->fn_list.bar1_idx_setup(oct, addr, MEMOPS_IDX, 1);
		offset = (MEMOPS_IDX << 22) + (addr & 0x3fffff);

		/*
		 * If operation crosses a 4MB boundary, split the transfer
		 * at the 4MB boundary.
		 */
		if (((addr + len - 1) & ~(0x3fffff)) != (addr & ~(0x3fffff))) {
			copy_len = (uint32_t)(((addr & ~(0x3fffff)) +
					       (MEMOPS_IDX << 22)) - addr);
		} else {
			copy_len = len;
		}

		if (op) {	/* read from core */
			FUNC0(oct, offset, hostbuf,
					 copy_len);
		} else {
			FUNC1(oct, offset, hostbuf,
					  copy_len);
		}

		len -= copy_len;
		addr += copy_len;
		hostbuf += copy_len;

	} while (len);

	oct->fn_list.bar1_idx_write(oct, MEMOPS_IDX, index_reg_val);

	FUNC3(&oct->mem_access_lock);
}