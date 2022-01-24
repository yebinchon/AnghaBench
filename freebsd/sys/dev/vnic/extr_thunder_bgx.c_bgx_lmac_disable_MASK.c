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
typedef  size_t uint8_t ;
typedef  int uint64_t ;
struct lmac {int /*<<< orphan*/ * phy_if_dev; int /*<<< orphan*/  phyaddr; int /*<<< orphan*/  check_link_mtx; int /*<<< orphan*/  check_link; } ;
struct bgx {scalar_t__ lmac_type; int /*<<< orphan*/  dev; struct lmac* lmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGX_CMRX_CFG ; 
 scalar_t__ BGX_MODE_10G_KR ; 
 scalar_t__ BGX_MODE_40G_KR ; 
 scalar_t__ BGX_MODE_XFI ; 
 scalar_t__ BGX_MODE_XLAUI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*,size_t) ; 
 int FUNC2 (struct bgx*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bgx*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct bgx *bgx, uint8_t lmacid)
{
	struct lmac *lmac;
	uint64_t cmrx_cfg;

	lmac = &bgx->lmac[lmacid];

	/* Stop callout */
	FUNC4(&lmac->check_link);
	FUNC6(&lmac->check_link_mtx);

	cmrx_cfg = FUNC2(bgx, lmacid, BGX_CMRX_CFG);
	cmrx_cfg &= ~(1 << 15);
	FUNC3(bgx, lmacid, BGX_CMRX_CFG, cmrx_cfg);
	FUNC1(bgx, lmacid);

	if ((bgx->lmac_type != BGX_MODE_XFI) &&
	    (bgx->lmac_type != BGX_MODE_XLAUI) &&
	    (bgx->lmac_type != BGX_MODE_40G_KR) &&
	    (bgx->lmac_type != BGX_MODE_10G_KR)) {
		if (lmac->phy_if_dev == NULL) {
			FUNC5(bgx->dev,
			    "LMAC%d missing interface to PHY\n", lmacid);
			return;
		}
		if (FUNC0(lmac->phy_if_dev, lmac->phyaddr,
		    lmacid) != 0) {
			FUNC5(bgx->dev,
			    "LMAC%d could not disconnect PHY\n", lmacid);
			return;
		}
		lmac->phy_if_dev = NULL;
	}
}