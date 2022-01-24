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
struct xgbe_prv_data {int mdio_mmd; int /*<<< orphan*/  xpcs_lock; } ;

/* Variables and functions */
 int MII_ADDR_C45 ; 
 int PCS_MMD_SELECT ; 
 int FUNC0 (struct xgbe_prv_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct xgbe_prv_data *pdata, int prtad,
			      int mmd_reg)
{
	unsigned long flags;
	unsigned int mmd_address;
	int mmd_data;

	if (mmd_reg & MII_ADDR_C45)
		mmd_address = mmd_reg & ~MII_ADDR_C45;
	else
		mmd_address = (pdata->mdio_mmd << 16) | (mmd_reg & 0xffff);

	/* The PCS registers are accessed using mmio. The underlying APB3
	 * management interface uses indirect addressing to access the MMD
	 * register sets. This requires accessing of the PCS register in two
	 * phases, an address phase and a data phase.
	 *
	 * The mmio interface is based on 32-bit offsets and values. All
	 * register offsets must therefore be adjusted by left shifting the
	 * offset 2 bits and reading 32 bits of data.
	 */
	FUNC2(&pdata->xpcs_lock, flags);
	FUNC1(pdata, PCS_MMD_SELECT << 2, mmd_address >> 8);
	mmd_data = FUNC0(pdata, (mmd_address & 0xff) << 2);
	FUNC3(&pdata->xpcs_lock, flags);

	return mmd_data;
}