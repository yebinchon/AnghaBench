
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct bnxt_ver_info {size_t chip_type; int ver_ctx; int chip_bond_id; int chip_metal; int chip_rev; int chip_num; int phy_partnumber; int phy_vendor; int roce_fw_name; int netctrl_fw_name; int mgmt_fw_name; int hwrm_fw_name; int phy_ver; int roce_fw_ver; int netctrl_fw_ver; int mgmt_fw_ver; int hwrm_fw_ver; int driver_hwrm_if_ver; int hwrm_if_ver; struct sysctl_oid* ver_oid; } ;
struct bnxt_softc {struct bnxt_ver_info* ver_info; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_STRING ;
 int ENOMEM ;
 size_t MAX_CHIP_TYPE ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct bnxt_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (int *,int ,int ,char*,int,int ,int ,char*) ;
 int SYSCTL_ADD_U16 (int *,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_U8 (int *,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int * bnxt_chip_type ;
 int bnxt_hwrm_min_ver_sysctl ;
 int bnxt_package_ver_sysctl ;

int
bnxt_create_ver_sysctls(struct bnxt_softc *softc)
{
 struct bnxt_ver_info *vi = softc->ver_info;
 struct sysctl_oid *oid = vi->ver_oid;

 if (!oid)
  return ENOMEM;

 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "hwrm_if", CTLFLAG_RD, vi->hwrm_if_ver, 0,
     "HWRM interface version");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "driver_hwrm_if", CTLFLAG_RD, vi->driver_hwrm_if_ver, 0,
     "HWRM firmware version");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "hwrm_fw", CTLFLAG_RD, vi->hwrm_fw_ver, 0,
     "HWRM firmware version");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "mgmt_fw", CTLFLAG_RD, vi->mgmt_fw_ver, 0,
     "management firmware version");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "netctrl_fw", CTLFLAG_RD, vi->netctrl_fw_ver, 0,
     "network control firmware version");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "roce_fw", CTLFLAG_RD, vi->roce_fw_ver, 0,
     "RoCE firmware version");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "phy", CTLFLAG_RD, vi->phy_ver, 0,
     "PHY version");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "hwrm_fw_name", CTLFLAG_RD, vi->hwrm_fw_name, 0,
     "HWRM firmware name");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "mgmt_fw_name", CTLFLAG_RD, vi->mgmt_fw_name, 0,
     "management firmware name");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "netctrl_fw_name", CTLFLAG_RD, vi->netctrl_fw_name, 0,
     "network control firmware name");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "roce_fw_name", CTLFLAG_RD, vi->roce_fw_name, 0,
     "RoCE firmware name");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "phy_vendor", CTLFLAG_RD, vi->phy_vendor, 0,
     "PHY vendor name");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "phy_partnumber", CTLFLAG_RD, vi->phy_partnumber, 0,
     "PHY vendor part number");
 SYSCTL_ADD_U16(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "chip_num", CTLFLAG_RD, &vi->chip_num, 0, "chip number");
 SYSCTL_ADD_U8(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "chip_rev", CTLFLAG_RD, &vi->chip_rev, 0, "chip revision");
 SYSCTL_ADD_U8(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "chip_metal", CTLFLAG_RD, &vi->chip_metal, 0, "chip metal number");
 SYSCTL_ADD_U8(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "chip_bond_id", CTLFLAG_RD, &vi->chip_bond_id, 0,
     "chip bond id");
 SYSCTL_ADD_STRING(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "chip_type", CTLFLAG_RD, vi->chip_type > MAX_CHIP_TYPE ?
     bnxt_chip_type[MAX_CHIP_TYPE] : bnxt_chip_type[vi->chip_type], 0,
     "RoCE firmware name");
 SYSCTL_ADD_PROC(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "package_ver", CTLTYPE_STRING|CTLFLAG_RD, softc, 0,
     bnxt_package_ver_sysctl, "A",
     "currently installed package version");
 SYSCTL_ADD_PROC(&vi->ver_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "hwrm_min_ver", CTLTYPE_STRING|CTLFLAG_RWTUN, softc, 0,
     bnxt_hwrm_min_ver_sysctl, "A",
     "minimum hwrm API vesion to support");

 return 0;
}
