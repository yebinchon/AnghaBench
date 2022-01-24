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
struct sysctl_oid {int dummy; } ;
struct bnxt_ver_info {size_t chip_type; int /*<<< orphan*/  ver_ctx; int /*<<< orphan*/  chip_bond_id; int /*<<< orphan*/  chip_metal; int /*<<< orphan*/  chip_rev; int /*<<< orphan*/  chip_num; int /*<<< orphan*/  phy_partnumber; int /*<<< orphan*/  phy_vendor; int /*<<< orphan*/  roce_fw_name; int /*<<< orphan*/  netctrl_fw_name; int /*<<< orphan*/  mgmt_fw_name; int /*<<< orphan*/  hwrm_fw_name; int /*<<< orphan*/  phy_ver; int /*<<< orphan*/  roce_fw_ver; int /*<<< orphan*/  netctrl_fw_ver; int /*<<< orphan*/  mgmt_fw_ver; int /*<<< orphan*/  hwrm_fw_ver; int /*<<< orphan*/  driver_hwrm_if_ver; int /*<<< orphan*/  hwrm_if_ver; struct sysctl_oid* ver_oid; } ;
struct bnxt_softc {struct bnxt_ver_info* ver_info; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_STRING ; 
 int ENOMEM ; 
 size_t MAX_CHIP_TYPE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct bnxt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_oid*) ; 
 int /*<<< orphan*/ * bnxt_chip_type ; 
 int /*<<< orphan*/  bnxt_hwrm_min_ver_sysctl ; 
 int /*<<< orphan*/  bnxt_package_ver_sysctl ; 

int
FUNC5(struct bnxt_softc *softc)
{
	struct bnxt_ver_info *vi = softc->ver_info;
	struct sysctl_oid *oid = vi->ver_oid;

	if (!oid)
		return ENOMEM;

	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "hwrm_if", CTLFLAG_RD, vi->hwrm_if_ver, 0,
	    "HWRM interface version");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "driver_hwrm_if", CTLFLAG_RD, vi->driver_hwrm_if_ver, 0,
	    "HWRM firmware version");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "hwrm_fw", CTLFLAG_RD, vi->hwrm_fw_ver, 0,
	    "HWRM firmware version");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "mgmt_fw", CTLFLAG_RD, vi->mgmt_fw_ver, 0,
	    "management firmware version");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "netctrl_fw", CTLFLAG_RD, vi->netctrl_fw_ver, 0,
	    "network control firmware version");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "roce_fw", CTLFLAG_RD, vi->roce_fw_ver, 0,
	    "RoCE firmware version");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "phy", CTLFLAG_RD, vi->phy_ver, 0,
	    "PHY version");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "hwrm_fw_name", CTLFLAG_RD, vi->hwrm_fw_name, 0,
	    "HWRM firmware name");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "mgmt_fw_name", CTLFLAG_RD, vi->mgmt_fw_name, 0,
	    "management firmware name");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "netctrl_fw_name", CTLFLAG_RD, vi->netctrl_fw_name, 0,
	    "network control firmware name");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "roce_fw_name", CTLFLAG_RD, vi->roce_fw_name, 0,
	    "RoCE firmware name");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "phy_vendor", CTLFLAG_RD, vi->phy_vendor, 0,
	    "PHY vendor name");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "phy_partnumber", CTLFLAG_RD, vi->phy_partnumber, 0,
	    "PHY vendor part number");
	FUNC2(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "chip_num", CTLFLAG_RD, &vi->chip_num, 0, "chip number");
	FUNC3(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "chip_rev", CTLFLAG_RD, &vi->chip_rev, 0, "chip revision");
	FUNC3(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "chip_metal", CTLFLAG_RD, &vi->chip_metal, 0, "chip metal number");
	FUNC3(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "chip_bond_id", CTLFLAG_RD, &vi->chip_bond_id, 0,
	    "chip bond id");
	FUNC1(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "chip_type", CTLFLAG_RD, vi->chip_type > MAX_CHIP_TYPE ?
	    bnxt_chip_type[MAX_CHIP_TYPE] : bnxt_chip_type[vi->chip_type], 0,
	    "RoCE firmware name");
	FUNC0(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "package_ver", CTLTYPE_STRING|CTLFLAG_RD, softc, 0,
	    bnxt_package_ver_sysctl, "A",
	    "currently installed package version");
	FUNC0(&vi->ver_ctx, FUNC4(oid), OID_AUTO,
	    "hwrm_min_ver", CTLTYPE_STRING|CTLFLAG_RWTUN, softc, 0,
	    bnxt_hwrm_min_ver_sysctl, "A",
	    "minimum hwrm API vesion to support");

	return 0;
}