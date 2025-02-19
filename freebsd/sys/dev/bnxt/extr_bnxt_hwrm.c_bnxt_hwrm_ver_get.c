
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct hwrm_ver_get_output {int hwrm_intf_maj; int hwrm_intf_min; int hwrm_intf_upd; int hwrm_fw_maj; int hwrm_fw_min; int hwrm_fw_bld; char const* hwrm_fw_name; scalar_t__ mgmt_fw_maj; scalar_t__ mgmt_fw_min; scalar_t__ mgmt_fw_bld; char const* mgmt_fw_name; scalar_t__ netctrl_fw_maj; scalar_t__ netctrl_fw_min; scalar_t__ netctrl_fw_bld; char const* netctrl_fw_name; scalar_t__ roce_fw_maj; scalar_t__ roce_fw_min; scalar_t__ roce_fw_bld; char const* roce_fw_name; int dev_caps_cfg; scalar_t__ def_req_timeout; scalar_t__ max_req_win_len; int chip_platform_type; int chip_bond_id; int chip_metal; int chip_rev; scalar_t__ chip_num; } ;
struct hwrm_ver_get_input {int hwrm_intf_upd; int hwrm_intf_min; int hwrm_intf_maj; int member_0; } ;
struct TYPE_3__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int hwrm_cmd_timeo; int flags; void* hwrm_max_req_len; TYPE_2__* ver_info; TYPE_1__ hwrm_cmd_resp; } ;
typedef int req ;
struct TYPE_4__ {int hwrm_if_major; int hwrm_if_minor; int hwrm_if_update; int chip_type; int chip_bond_id; int chip_metal; int chip_rev; void* chip_num; int roce_fw_name; int roce_fw_ver; int netctrl_fw_name; int netctrl_fw_ver; int mgmt_fw_name; int mgmt_fw_ver; int hwrm_fw_name; int driver_hwrm_if_ver; int hwrm_fw_ver; int hwrm_if_ver; } ;


 int BNXT_FLAG_SHORT_CMD ;
 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_NAME_SIZE ;
 int BNXT_VERSTR_SIZE ;
 void* HWRM_MAX_REQ_LEN ;
 int HWRM_VERSION_MAJOR ;
 int HWRM_VERSION_MINOR ;
 char const* HWRM_VERSION_STR ;
 int HWRM_VERSION_UPDATE ;
 int HWRM_VER_GET ;
 int HWRM_VER_GET_OUTPUT_DEV_CAPS_CFG_SHORT_CMD_REQUIRED ;
 int HWRM_VER_GET_OUTPUT_DEV_CAPS_CFG_SHORT_CMD_SUPPORTED ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_ver_get_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_ver_get_input*,int ) ;
 void* le16toh (scalar_t__) ;
 int le32toh (int ) ;
 int snprintf (int ,int ,char*,int,int,int) ;
 int strlcpy (int ,char const*,int ) ;

int
bnxt_hwrm_ver_get(struct bnxt_softc *softc)
{
 struct hwrm_ver_get_input req = {0};
 struct hwrm_ver_get_output *resp =
     (void *)softc->hwrm_cmd_resp.idi_vaddr;
 int rc;
 const char nastr[] = "<not installed>";
 const char naver[] = "<N/A>";
 uint32_t dev_caps_cfg;

 softc->hwrm_max_req_len = HWRM_MAX_REQ_LEN;
 softc->hwrm_cmd_timeo = 1000;
 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_VER_GET);

 req.hwrm_intf_maj = HWRM_VERSION_MAJOR;
 req.hwrm_intf_min = HWRM_VERSION_MINOR;
 req.hwrm_intf_upd = HWRM_VERSION_UPDATE;

 BNXT_HWRM_LOCK(softc);
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 if (rc)
  goto fail;

 snprintf(softc->ver_info->hwrm_if_ver, BNXT_VERSTR_SIZE, "%d.%d.%d",
     resp->hwrm_intf_maj, resp->hwrm_intf_min, resp->hwrm_intf_upd);
 softc->ver_info->hwrm_if_major = resp->hwrm_intf_maj;
 softc->ver_info->hwrm_if_minor = resp->hwrm_intf_min;
 softc->ver_info->hwrm_if_update = resp->hwrm_intf_upd;
 snprintf(softc->ver_info->hwrm_fw_ver, BNXT_VERSTR_SIZE, "%d.%d.%d",
     resp->hwrm_fw_maj, resp->hwrm_fw_min, resp->hwrm_fw_bld);
 strlcpy(softc->ver_info->driver_hwrm_if_ver, HWRM_VERSION_STR,
     BNXT_VERSTR_SIZE);
 strlcpy(softc->ver_info->hwrm_fw_name, resp->hwrm_fw_name,
     BNXT_NAME_SIZE);

 if (resp->mgmt_fw_maj == 0 && resp->mgmt_fw_min == 0 &&
     resp->mgmt_fw_bld == 0) {
  strlcpy(softc->ver_info->mgmt_fw_ver, naver, BNXT_VERSTR_SIZE);
  strlcpy(softc->ver_info->mgmt_fw_name, nastr, BNXT_NAME_SIZE);
 }
 else {
  snprintf(softc->ver_info->mgmt_fw_ver, BNXT_VERSTR_SIZE,
      "%d.%d.%d", resp->mgmt_fw_maj, resp->mgmt_fw_min,
      resp->mgmt_fw_bld);
  strlcpy(softc->ver_info->mgmt_fw_name, resp->mgmt_fw_name,
      BNXT_NAME_SIZE);
 }
 if (resp->netctrl_fw_maj == 0 && resp->netctrl_fw_min == 0 &&
     resp->netctrl_fw_bld == 0) {
  strlcpy(softc->ver_info->netctrl_fw_ver, naver,
      BNXT_VERSTR_SIZE);
  strlcpy(softc->ver_info->netctrl_fw_name, nastr,
      BNXT_NAME_SIZE);
 }
 else {
  snprintf(softc->ver_info->netctrl_fw_ver, BNXT_VERSTR_SIZE,
      "%d.%d.%d", resp->netctrl_fw_maj, resp->netctrl_fw_min,
      resp->netctrl_fw_bld);
  strlcpy(softc->ver_info->netctrl_fw_name, resp->netctrl_fw_name,
      BNXT_NAME_SIZE);
 }
 if (resp->roce_fw_maj == 0 && resp->roce_fw_min == 0 &&
     resp->roce_fw_bld == 0) {
  strlcpy(softc->ver_info->roce_fw_ver, naver, BNXT_VERSTR_SIZE);
  strlcpy(softc->ver_info->roce_fw_name, nastr, BNXT_NAME_SIZE);
 }
 else {
  snprintf(softc->ver_info->roce_fw_ver, BNXT_VERSTR_SIZE,
      "%d.%d.%d", resp->roce_fw_maj, resp->roce_fw_min,
      resp->roce_fw_bld);
  strlcpy(softc->ver_info->roce_fw_name, resp->roce_fw_name,
      BNXT_NAME_SIZE);
 }
 softc->ver_info->chip_num = le16toh(resp->chip_num);
 softc->ver_info->chip_rev = resp->chip_rev;
 softc->ver_info->chip_metal = resp->chip_metal;
 softc->ver_info->chip_bond_id = resp->chip_bond_id;
 softc->ver_info->chip_type = resp->chip_platform_type;

 if (resp->max_req_win_len)
  softc->hwrm_max_req_len = le16toh(resp->max_req_win_len);
 if (resp->def_req_timeout)
  softc->hwrm_cmd_timeo = le16toh(resp->def_req_timeout);

 dev_caps_cfg = le32toh(resp->dev_caps_cfg);
 if ((dev_caps_cfg & HWRM_VER_GET_OUTPUT_DEV_CAPS_CFG_SHORT_CMD_SUPPORTED) &&
     (dev_caps_cfg & HWRM_VER_GET_OUTPUT_DEV_CAPS_CFG_SHORT_CMD_REQUIRED))
  softc->flags |= BNXT_FLAG_SHORT_CMD;

fail:
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
