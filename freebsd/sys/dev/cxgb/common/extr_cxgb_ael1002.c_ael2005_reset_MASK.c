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
typedef  scalar_t__ u8 ;
struct reg_val {int member_1; int member_2; int member_3; int /*<<< orphan*/  const member_0; } ;
struct cphy {scalar_t__ modtype; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LASI_CTRL ; 
#define  MDIO_DEV_PMA_PMD 128 
 int FUNC0 (struct cphy*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cphy*) ; 
 int FUNC2 (struct cphy*) ; 
 int FUNC3 (struct cphy*,int) ; 
 int /*<<< orphan*/  edc_none ; 
 int FUNC4 (struct cphy*,int /*<<< orphan*/  const,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int phy_modtype_none ; 
 int phy_modtype_twinax ; 
 int phy_modtype_twinax_long ; 
 int FUNC6 (struct cphy*,struct reg_val*) ; 
 int FUNC7 (struct cphy*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cphy *phy, int wait)
{
	static struct reg_val regs0[] = {
		{ MDIO_DEV_PMA_PMD, 0xc001, 0, 1 << 5 },
		{ MDIO_DEV_PMA_PMD, 0xc017, 0, 1 << 5 },
		{ MDIO_DEV_PMA_PMD, 0xc013, 0xffff, 0xf341 },
		{ MDIO_DEV_PMA_PMD, 0xc210, 0xffff, 0x8000 },
		{ MDIO_DEV_PMA_PMD, 0xc210, 0xffff, 0x8100 },
		{ MDIO_DEV_PMA_PMD, 0xc210, 0xffff, 0x8000 },
		{ MDIO_DEV_PMA_PMD, 0xc210, 0xffff, 0 },
		{ 0, 0, 0, 0 }
	};
	static struct reg_val regs1[] = {
		{ MDIO_DEV_PMA_PMD, 0xca00, 0xffff, 0x0080 },
		{ MDIO_DEV_PMA_PMD, 0xca12, 0xffff, 0 },
		{ 0, 0, 0, 0 }
	};

	int err;
	unsigned int lasi_ctrl;

	err = FUNC4(phy, MDIO_DEV_PMA_PMD, LASI_CTRL, &lasi_ctrl);
	if (err)
		return err;

	err = FUNC7(phy, MDIO_DEV_PMA_PMD, 0);
	if (err)
		return err;

	FUNC5(125);
	phy->priv = edc_none;
	err = FUNC6(phy, regs0);
	if (err)
		return err;

	FUNC5(50);

	err = FUNC0(phy, 0);
	if (err < 0)
		return err;
	phy->modtype = (u8)err;

	if (err == phy_modtype_none)
		err = 0;
	else if (err == phy_modtype_twinax || err == phy_modtype_twinax_long)
		err = FUNC3(phy, err);
	else
		err = FUNC2(phy);
	if (err)
		return err;

	err = FUNC6(phy, regs1);
	if (err)
		return err;

	/* reset wipes out interrupts, reenable them if they were on */
	if (lasi_ctrl & 1)
		err = FUNC1(phy);
	return err;
}