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
struct xgbe_prv_data {int dummy; } ;
typedef  enum xgbe_rx { ____Placeholder_xgbe_rx } xgbe_rx ;
typedef  enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_AN_LPX ; 
 int /*<<< orphan*/  MDIO_AN_XNP ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 unsigned int XGBE_XNP_NP_EXCHANGE ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xgbe_prv_data*,int*) ; 
 int FUNC2 (struct xgbe_prv_data*,int*) ; 

__attribute__((used)) static enum xgbe_an FUNC3(struct xgbe_prv_data *pdata,
				   enum xgbe_rx *state)
{
	unsigned int ad_reg, lp_reg;

	/* Check Extended Next Page support */
	ad_reg = FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_XNP);
	lp_reg = FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_LPX);

	return ((ad_reg & XGBE_XNP_NP_EXCHANGE) ||
		(lp_reg & XGBE_XNP_NP_EXCHANGE))
	       ? FUNC2(pdata, state)
	       : FUNC1(pdata, state);
}