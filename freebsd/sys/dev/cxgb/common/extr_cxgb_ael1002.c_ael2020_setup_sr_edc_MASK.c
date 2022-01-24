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
struct reg_val {int member_1; int member_2; int member_3; int /*<<< orphan*/  const member_0; } ;
struct cphy {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
#define  MDIO_DEV_PMA_PMD 128 
 int /*<<< orphan*/  edc_sr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cphy*,struct reg_val*) ; 

__attribute__((used)) static int FUNC2(struct cphy *phy)
{
	static struct reg_val regs[] = {
		{ MDIO_DEV_PMA_PMD, 0xcc01, 0xffff, 0x488a },

		{ MDIO_DEV_PMA_PMD, 0xcb1b, 0xffff, 0x0200 },
		{ MDIO_DEV_PMA_PMD, 0xcb1c, 0xffff, 0x00f0 },
		{ MDIO_DEV_PMA_PMD, 0xcc06, 0xffff, 0x00e0 },

		/* end */
		{ 0, 0, 0, 0 }
	};
	int err;

	err = FUNC1(phy, regs);
	FUNC0(50);
	if (err)
		return err;

	phy->priv = edc_sr;
	return 0;
}