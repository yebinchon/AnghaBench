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
typedef  int u64 ;
struct ixl_vsi {int /*<<< orphan*/  media; } ;

/* Variables and functions */
 int I40E_CAP_PHY_TYPE_1000BASE_KX ; 
 int I40E_CAP_PHY_TYPE_1000BASE_LX ; 
 int I40E_CAP_PHY_TYPE_1000BASE_SX ; 
 int I40E_CAP_PHY_TYPE_1000BASE_T ; 
 int I40E_CAP_PHY_TYPE_100BASE_TX ; 
 int I40E_CAP_PHY_TYPE_10GBASE_AOC ; 
 int I40E_CAP_PHY_TYPE_10GBASE_CR1 ; 
 int I40E_CAP_PHY_TYPE_10GBASE_CR1_CU ; 
 int I40E_CAP_PHY_TYPE_10GBASE_KR ; 
 int I40E_CAP_PHY_TYPE_10GBASE_KX4 ; 
 int I40E_CAP_PHY_TYPE_10GBASE_LR ; 
 int I40E_CAP_PHY_TYPE_10GBASE_SFPP_CU ; 
 int I40E_CAP_PHY_TYPE_10GBASE_SR ; 
 int I40E_CAP_PHY_TYPE_10GBASE_T ; 
 int I40E_CAP_PHY_TYPE_20GBASE_KR2 ; 
 int I40E_CAP_PHY_TYPE_25GBASE_ACC ; 
 int I40E_CAP_PHY_TYPE_25GBASE_AOC ; 
 int I40E_CAP_PHY_TYPE_25GBASE_CR ; 
 int I40E_CAP_PHY_TYPE_25GBASE_KR ; 
 int I40E_CAP_PHY_TYPE_25GBASE_LR ; 
 int I40E_CAP_PHY_TYPE_25GBASE_SR ; 
 int I40E_CAP_PHY_TYPE_40GBASE_AOC ; 
 int I40E_CAP_PHY_TYPE_40GBASE_CR4 ; 
 int I40E_CAP_PHY_TYPE_40GBASE_CR4_CU ; 
 int I40E_CAP_PHY_TYPE_40GBASE_KR4 ; 
 int I40E_CAP_PHY_TYPE_40GBASE_LR4 ; 
 int I40E_CAP_PHY_TYPE_40GBASE_SR4 ; 
 int I40E_CAP_PHY_TYPE_SFI ; 
 int I40E_CAP_PHY_TYPE_XAUI ; 
 int I40E_CAP_PHY_TYPE_XFI ; 
 int I40E_CAP_PHY_TYPE_XLAUI ; 
 int I40E_CAP_PHY_TYPE_XLPPI ; 
 int IFM_1000_KX ; 
 int IFM_1000_LX ; 
 int IFM_1000_SX ; 
 int IFM_1000_T ; 
 int IFM_100_TX ; 
 int IFM_10G_AOC ; 
 int IFM_10G_CR1 ; 
 int IFM_10G_KR ; 
 int IFM_10G_KX4 ; 
 int IFM_10G_LR ; 
 int IFM_10G_SFI ; 
 int IFM_10G_SR ; 
 int IFM_10G_T ; 
 int IFM_10G_TWINAX ; 
 int IFM_20G_KR2 ; 
 int IFM_25G_ACC ; 
 int IFM_25G_AOC ; 
 int IFM_25G_CR ; 
 int IFM_25G_KR ; 
 int IFM_25G_LR ; 
 int IFM_25G_SR ; 
 int IFM_40G_CR4 ; 
 int IFM_40G_KR4 ; 
 int IFM_40G_LR4 ; 
 int IFM_40G_SR4 ; 
 int IFM_40G_XLPPI ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(struct ixl_vsi *vsi, u64 phy_types)
{
	/* Display supported media types */
	if (phy_types & (I40E_CAP_PHY_TYPE_100BASE_TX))
		FUNC0(vsi->media, IFM_ETHER | IFM_100_TX, 0, NULL);

	if (phy_types & (I40E_CAP_PHY_TYPE_1000BASE_T))
		FUNC0(vsi->media, IFM_ETHER | IFM_1000_T, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_1000BASE_SX))
		FUNC0(vsi->media, IFM_ETHER | IFM_1000_SX, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_1000BASE_LX))
		FUNC0(vsi->media, IFM_ETHER | IFM_1000_LX, 0, NULL);

	if (phy_types & (I40E_CAP_PHY_TYPE_XAUI) ||
	    phy_types & (I40E_CAP_PHY_TYPE_XFI) ||
	    phy_types & (I40E_CAP_PHY_TYPE_10GBASE_SFPP_CU))
		FUNC0(vsi->media, IFM_ETHER | IFM_10G_TWINAX, 0, NULL);

	if (phy_types & (I40E_CAP_PHY_TYPE_10GBASE_SR))
		FUNC0(vsi->media, IFM_ETHER | IFM_10G_SR, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_10GBASE_LR))
		FUNC0(vsi->media, IFM_ETHER | IFM_10G_LR, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_10GBASE_T))
		FUNC0(vsi->media, IFM_ETHER | IFM_10G_T, 0, NULL);

	if (phy_types & (I40E_CAP_PHY_TYPE_40GBASE_CR4) ||
	    phy_types & (I40E_CAP_PHY_TYPE_40GBASE_CR4_CU) ||
	    phy_types & (I40E_CAP_PHY_TYPE_40GBASE_AOC) ||
	    phy_types & (I40E_CAP_PHY_TYPE_XLAUI) ||
	    phy_types & (I40E_CAP_PHY_TYPE_40GBASE_KR4))
		FUNC0(vsi->media, IFM_ETHER | IFM_40G_CR4, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_40GBASE_SR4))
		FUNC0(vsi->media, IFM_ETHER | IFM_40G_SR4, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_40GBASE_LR4))
		FUNC0(vsi->media, IFM_ETHER | IFM_40G_LR4, 0, NULL);

	if (phy_types & (I40E_CAP_PHY_TYPE_1000BASE_KX))
		FUNC0(vsi->media, IFM_ETHER | IFM_1000_KX, 0, NULL);

	if (phy_types & (I40E_CAP_PHY_TYPE_10GBASE_CR1_CU)
	    || phy_types & (I40E_CAP_PHY_TYPE_10GBASE_CR1))
		FUNC0(vsi->media, IFM_ETHER | IFM_10G_CR1, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_10GBASE_AOC))
		FUNC0(vsi->media, IFM_ETHER | IFM_10G_AOC, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_SFI))
		FUNC0(vsi->media, IFM_ETHER | IFM_10G_SFI, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_10GBASE_KX4))
		FUNC0(vsi->media, IFM_ETHER | IFM_10G_KX4, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_10GBASE_KR))
		FUNC0(vsi->media, IFM_ETHER | IFM_10G_KR, 0, NULL);

	if (phy_types & (I40E_CAP_PHY_TYPE_20GBASE_KR2))
		FUNC0(vsi->media, IFM_ETHER | IFM_20G_KR2, 0, NULL);

	if (phy_types & (I40E_CAP_PHY_TYPE_40GBASE_KR4))
		FUNC0(vsi->media, IFM_ETHER | IFM_40G_KR4, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_XLPPI))
		FUNC0(vsi->media, IFM_ETHER | IFM_40G_XLPPI, 0, NULL);

	if (phy_types & (I40E_CAP_PHY_TYPE_25GBASE_KR))
		FUNC0(vsi->media, IFM_ETHER | IFM_25G_KR, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_25GBASE_CR))
		FUNC0(vsi->media, IFM_ETHER | IFM_25G_CR, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_25GBASE_SR))
		FUNC0(vsi->media, IFM_ETHER | IFM_25G_SR, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_25GBASE_LR))
		FUNC0(vsi->media, IFM_ETHER | IFM_25G_LR, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_25GBASE_AOC))
		FUNC0(vsi->media, IFM_ETHER | IFM_25G_AOC, 0, NULL);
	if (phy_types & (I40E_CAP_PHY_TYPE_25GBASE_ACC))
		FUNC0(vsi->media, IFM_ETHER | IFM_25G_ACC, 0, NULL);
}