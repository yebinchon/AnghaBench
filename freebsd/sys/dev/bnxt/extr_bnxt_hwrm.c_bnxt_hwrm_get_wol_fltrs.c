
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct hwrm_wol_filter_qcfg_output {scalar_t__ wol_type; int wol_filter_id; int next_handle; } ;
struct hwrm_wol_filter_qcfg_input {void* handle; void* port_id; int member_0; } ;
struct TYPE_4__ {scalar_t__ port_id; } ;
struct TYPE_3__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int wol; int wol_filter_id; TYPE_2__ pf; TYPE_1__ hwrm_cmd_resp; } ;
typedef int req ;


 scalar_t__ HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT ;
 int HWRM_WOL_FILTER_QCFG ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_wol_filter_qcfg_input*,int ) ;
 void* htole16 (scalar_t__) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_wol_filter_qcfg_input*,int) ;
 scalar_t__ le16toh (int ) ;

uint16_t
bnxt_hwrm_get_wol_fltrs(struct bnxt_softc *softc, uint16_t handle)
{
 struct hwrm_wol_filter_qcfg_input req = {0};
 struct hwrm_wol_filter_qcfg_output *resp =
   (void *)softc->hwrm_cmd_resp.idi_vaddr;
 uint16_t next_handle = 0;
 int rc;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_WOL_FILTER_QCFG);
 req.port_id = htole16(softc->pf.port_id);
 req.handle = htole16(handle);
 rc = hwrm_send_message(softc, &req, sizeof(req));
 if (!rc) {
  next_handle = le16toh(resp->next_handle);
  if (next_handle != 0) {
   if (resp->wol_type ==
    HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT) {
    softc->wol = 1;
    softc->wol_filter_id = resp->wol_filter_id;
   }
  }
 }
 return next_handle;
}
