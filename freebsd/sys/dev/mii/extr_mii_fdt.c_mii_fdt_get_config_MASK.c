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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  pcell_t ;
struct TYPE_4__ {int macnode; int phynode; int /*<<< orphan*/  flags; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  con_type; } ;
typedef  TYPE_1__ mii_fdt_phy_config_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MIIF_FDT_BROKEN_TURNAROUND ; 
 int /*<<< orphan*/  MIIF_FDT_COMPAT_CLAUSE45 ; 
 int /*<<< orphan*/  MIIF_FDT_EEE_BROKEN_1000KX ; 
 int /*<<< orphan*/  MIIF_FDT_EEE_BROKEN_1000T ; 
 int /*<<< orphan*/  MIIF_FDT_EEE_BROKEN_100TX ; 
 int /*<<< orphan*/  MIIF_FDT_EEE_BROKEN_10GKR ; 
 int /*<<< orphan*/  MIIF_FDT_EEE_BROKEN_10GKX4 ; 
 int /*<<< orphan*/  MIIF_FDT_EEE_BROKEN_10GT ; 
 int /*<<< orphan*/  MIIF_FDT_LANE_SWAP ; 
 int /*<<< orphan*/  MIIF_FDT_NO_LANE_SWAP ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,char*) ; 

mii_fdt_phy_config_t *
FUNC8(device_t phydev)
{
	mii_fdt_phy_config_t *cfg;
	device_t miibus, macdev;
	pcell_t val;

	miibus = FUNC2(phydev);
	macdev = FUNC2(miibus);

	cfg = FUNC3(sizeof(*cfg), M_OFWPROP, M_ZERO | M_WAITOK);

	/*
	 * If we can't find our parent MAC's node, there's nothing more we can
	 * fill in; cfg is already full of zero/default values, return it.
	 */
	if ((cfg->macnode = FUNC6(macdev)) == -1)
		return (cfg);

	cfg->con_type = FUNC4(cfg->macnode);

	/*
	 * If we can't find our own PHY node, there's nothing more we can fill
	 * in, just return what we've got.
	 */
	if ((cfg->phynode = FUNC5(cfg->macnode)) == -1)
		return (cfg);

	if (FUNC0(cfg->phynode, "max-speed", &val, sizeof(val)) > 0)
		cfg->max_speed = val;

	if (FUNC7(cfg->phynode,
	    "ethernet-phy-ieee802.3-c45"))
		cfg->flags |= MIIF_FDT_COMPAT_CLAUSE45;

	if (FUNC1(cfg->phynode, "broken-turn-around"))
		cfg->flags |= MIIF_FDT_BROKEN_TURNAROUND;
	if (FUNC1(cfg->phynode, "enet-phy-lane-swap"))
		cfg->flags |= MIIF_FDT_LANE_SWAP;
	if (FUNC1(cfg->phynode, "enet-phy-lane-no-swap"))
		cfg->flags |= MIIF_FDT_NO_LANE_SWAP;
	if (FUNC1(cfg->phynode, "eee-broken-100tx"))
		cfg->flags |= MIIF_FDT_EEE_BROKEN_100TX;
	if (FUNC1(cfg->phynode, "eee-broken-1000t"))
		cfg->flags |= MIIF_FDT_EEE_BROKEN_1000T;
	if (FUNC1(cfg->phynode, "eee-broken-10gt"))
		cfg->flags |= MIIF_FDT_EEE_BROKEN_10GT;
	if (FUNC1(cfg->phynode, "eee-broken-1000kx"))
		cfg->flags |= MIIF_FDT_EEE_BROKEN_1000KX;
	if (FUNC1(cfg->phynode, "eee-broken-10gkx4"))
		cfg->flags |= MIIF_FDT_EEE_BROKEN_10GKX4;
	if (FUNC1(cfg->phynode, "eee-broken-10gkr"))
		cfg->flags |= MIIF_FDT_EEE_BROKEN_10GKR;

	return (cfg);
}