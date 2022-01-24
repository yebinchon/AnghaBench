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
typedef  size_t uint64_t ;
typedef  scalar_t__ uint32_t ;
struct ntb_softc {unsigned int b2b_mw_idx; size_t b2b_off; struct ntb_pci_bar_info* bar_info; } ;
struct ntb_pci_bar_info {size_t size; } ;
typedef  enum ntb_bar { ____Placeholder_ntb_bar } ntb_bar ;
typedef  int /*<<< orphan*/  device_t ;
typedef  size_t bus_addr_t ;

/* Variables and functions */
 size_t BAR_HIGH_MASK ; 
 int EINVAL ; 
 int EIO ; 
 int ERANGE ; 
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ntb_softc*,int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct ntb_softc*,int) ; 
 struct ntb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ntb_softc*,unsigned int) ; 
 size_t FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__,size_t) ; 
 unsigned int FUNC7 (struct ntb_softc*,unsigned int) ; 

__attribute__((used)) static int
FUNC8(device_t dev, unsigned idx, bus_addr_t addr, size_t size)
{
	struct ntb_softc *ntb = FUNC2(dev);
	struct ntb_pci_bar_info *bar;
	uint64_t base, limit, reg_val;
	size_t bar_size, mw_size;
	uint32_t base_reg, xlat_reg, limit_reg;
	enum ntb_bar bar_num;

	if (idx >= FUNC3(dev))
		return (EINVAL);
	idx = FUNC7(ntb, idx);

	bar_num = FUNC4(ntb, idx);
	bar = &ntb->bar_info[bar_num];

	bar_size = bar->size;
	if (idx == ntb->b2b_mw_idx)
		mw_size = bar_size - ntb->b2b_off;
	else
		mw_size = bar_size;

	/* Hardware requires that addr is aligned to bar size */
	if ((addr & (bar_size - 1)) != 0)
		return (EINVAL);

	if (size > mw_size)
		return (EINVAL);

	FUNC0(ntb, bar_num, &base_reg, &xlat_reg, &limit_reg);

	limit = 0;
	if (FUNC1(ntb, bar_num)) {
		base = FUNC5(8, base_reg) & BAR_HIGH_MASK;

		if (limit_reg != 0 && size != mw_size)
			limit = base + size;

		/* Set and verify translation address */
		FUNC6(8, xlat_reg, addr);
		reg_val = FUNC5(8, xlat_reg) & BAR_HIGH_MASK;
		if (reg_val != addr) {
			FUNC6(8, xlat_reg, 0);
			return (EIO);
		}

		/* Set and verify the limit */
		FUNC6(8, limit_reg, limit);
		reg_val = FUNC5(8, limit_reg) & BAR_HIGH_MASK;
		if (reg_val != limit) {
			FUNC6(8, limit_reg, base);
			FUNC6(8, xlat_reg, 0);
			return (EIO);
		}
	} else {
		/* Configure 32-bit (split) BAR MW */

		if ((addr & UINT32_MAX) != addr)
			return (ERANGE);
		if (((addr + size) & UINT32_MAX) != (addr + size))
			return (ERANGE);

		base = FUNC5(4, base_reg) & BAR_HIGH_MASK;

		if (limit_reg != 0 && size != mw_size)
			limit = base + size;

		/* Set and verify translation address */
		FUNC6(4, xlat_reg, addr);
		reg_val = FUNC5(4, xlat_reg) & BAR_HIGH_MASK;
		if (reg_val != addr) {
			FUNC6(4, xlat_reg, 0);
			return (EIO);
		}

		/* Set and verify the limit */
		FUNC6(4, limit_reg, limit);
		reg_val = FUNC5(4, limit_reg) & BAR_HIGH_MASK;
		if (reg_val != limit) {
			FUNC6(4, limit_reg, base);
			FUNC6(4, xlat_reg, 0);
			return (EIO);
		}
	}
	return (0);
}