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
struct mwl_hal_priv {int dummy; } ;
struct mwl_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACREG_REG_PROMISCUOUS ; 
 struct mwl_hal_priv* FUNC0 (struct mwl_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_hal_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl_hal_priv*) ; 
 int FUNC3 (struct mwl_hal_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_hal_priv*,int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct mwl_hal *mh0, int ena)
{
	struct mwl_hal_priv *mh = FUNC0(mh0);
	uint32_t v;

	FUNC1(mh);
	v = FUNC3(mh, MACREG_REG_PROMISCUOUS);
	FUNC4(mh, MACREG_REG_PROMISCUOUS, ena ? v | 1 : v &~ 1);
	FUNC2(mh);
	return 0;
}