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
struct mdio_ops {int dummy; } ;
struct cphy {int modtype; } ;
struct TYPE_4__ {int /*<<< orphan*/  adapter; struct cphy phy; } ;
typedef  TYPE_1__ pinfo_t ;

/* Variables and functions */
 int SUPPORTED_10000baseT_Full ; 
 int SUPPORTED_AUI ; 
 int SUPPORTED_FIBRE ; 
 int SUPPORTED_IRQ ; 
 int FUNC0 (struct cphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ael2020_ops ; 
 int /*<<< orphan*/  ael2020_reset_regs ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cphy*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,struct mdio_ops const*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct cphy*,int /*<<< orphan*/ ) ; 

int FUNC5(pinfo_t *pinfo, int phy_addr,
			const struct mdio_ops *mdio_ops)
{
	int err;
	struct cphy *phy = &pinfo->phy;

	FUNC2(phy, pinfo->adapter, pinfo, phy_addr, &ael2020_ops, mdio_ops,
		SUPPORTED_10000baseT_Full | SUPPORTED_AUI | SUPPORTED_FIBRE |
		  SUPPORTED_IRQ, "10GBASE-R");
	FUNC3(125);

	err = FUNC4(phy, ael2020_reset_regs);
	if (err)
		return err;
	FUNC3(100);

	err = FUNC0(phy, 0);
	if (err >= 0)
		phy->modtype = err;

	FUNC1(phy, 0);
	return 0;
}