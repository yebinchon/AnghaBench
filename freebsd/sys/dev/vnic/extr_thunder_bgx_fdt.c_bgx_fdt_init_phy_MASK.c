#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct bgx {int /*<<< orphan*/  dev; TYPE_1__* lmac; int /*<<< orphan*/  bgx_id; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  qlm_mode ;
typedef  int /*<<< orphan*/  phy ;
typedef  scalar_t__ phandle_t ;
struct TYPE_2__ {scalar_t__ phyaddr; size_t lmacid; int /*<<< orphan*/  mac; int /*<<< orphan*/ * phy_if_dev; } ;

/* Variables and functions */
 int CONN_TYPE_MAXLEN ; 
 int ENXIO ; 
 size_t MAX_LMAC_PER_BGX ; 
 scalar_t__ MII_PHY_ANY ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct bgx*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bgx*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct bgx*,char*,scalar_t__) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

int
FUNC15(struct bgx *bgx)
{
	char *node_name;
	phandle_t node, child;
	phandle_t phy, mdio;
	ssize_t len;
	uint8_t lmac;
	char qlm_mode[CONN_TYPE_MAXLEN];

	node = FUNC9(bgx);
	if (node == 0) {
		FUNC13(bgx->dev,
		    "Could not find bgx%d node in FDT\n", bgx->bgx_id);
		return (ENXIO);
	}

	lmac = 0;
	for (child = FUNC0(node); child > 0; child = FUNC7(child)) {
		len = FUNC3(child, "qlm-mode", qlm_mode, sizeof(qlm_mode));
		if (len > 0) {
			if (!FUNC11(bgx, qlm_mode, len)) {
				/*
				 * Connection type not match with BGX mode.
				 */
				continue;
			}
		} else {
			len = FUNC4(child, "name",
			    (void **)&node_name);
			if (len <= 0) {
				continue;
			}

			if (!FUNC12(bgx, node_name, len)) {
				FUNC14(node_name, M_OFWPROP);
				continue;
			}
			FUNC14(node_name, M_OFWPROP);
		}

		/* Acquire PHY address */
		if (FUNC2(child, "reg", &bgx->lmac[lmac].phyaddr,
		    sizeof(bgx->lmac[lmac].phyaddr)) <= 0) {
			if (bootverbose) {
				FUNC13(bgx->dev,
				    "Could not retrieve PHY address\n");
			}
			bgx->lmac[lmac].phyaddr = MII_PHY_ANY;
		}

		if (FUNC2(child, "phy-handle", &phy,
		    sizeof(phy)) <= 0) {
			if (bootverbose) {
				FUNC13(bgx->dev,
				    "No phy-handle in PHY node. Skipping...\n");
			}
			continue;
		}
		phy = FUNC5(phy);
		/*
		 * Get PHY interface (MDIO bus) device.
		 * Driver must be already attached.
		 */
		mdio = FUNC6(phy);
		bgx->lmac[lmac].phy_if_dev =
		    FUNC1(FUNC8(mdio));
		if (bgx->lmac[lmac].phy_if_dev == NULL) {
			if (bootverbose) {
				FUNC13(bgx->dev,
				    "Could not find interface to PHY\n");
			}
			continue;
		}

		/* Get mac address from FDT */
		FUNC10(child, bgx->lmac[lmac].mac);

		bgx->lmac[lmac].lmacid = lmac;
		lmac++;
		if (lmac == MAX_LMAC_PER_BGX)
			break;
	}
	if (lmac == 0) {
		FUNC13(bgx->dev, "Could not find matching PHY\n");
		return (ENXIO);
	}

	return (0);
}