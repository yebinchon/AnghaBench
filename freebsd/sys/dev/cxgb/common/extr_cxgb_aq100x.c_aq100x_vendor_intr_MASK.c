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
struct cphy {scalar_t__ addr; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  A_T3DBG_GPIO_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  F_GPIO10_OUT_VAL ; 
 int /*<<< orphan*/  F_GPIO6_OUT_VAL ; 
 int /*<<< orphan*/  MDIO_DEV_VEND1 ; 
 unsigned int FUNC2 (struct cphy*) ; 
 int cphy_cause_alarm ; 
 int e ; 
 int FUNC3 (struct cphy*,int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct cphy *phy, int *rc)
{
	int err;
	unsigned int cause, v;

	err = FUNC3(phy, MDIO_DEV_VEND1, 0xfc01, &cause);
	if (err)
		return (err);

	if (cause & FUNC0(2)) {
		err = FUNC3(phy, MDIO_DEV_VEND1, 0xcc00, &v);
		if (err)
			return (err);

		if (v & FUNC0(e)) {
			FUNC1(phy->adapter, "PHY%d: temperature is now %dC\n",
			    phy->addr, FUNC2(phy));

			FUNC4(phy->adapter, A_T3DBG_GPIO_EN,
			    phy->addr ? F_GPIO10_OUT_VAL : F_GPIO6_OUT_VAL, 0);

			*rc |= cphy_cause_alarm;
		}

		cause &= ~4;
	}

	if (cause)
		FUNC1(phy->adapter, "PHY%d: unhandled vendor interrupt"
		    " (0x%x)\n", phy->addr, cause);

	return (0);

}