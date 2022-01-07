
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct hwrm_fw_qstatus_output {int selfrst_status; } ;
struct hwrm_fw_qstatus_input {int embedded_proc_type; int member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_cmd_resp; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int HWRM_FW_QSTATUS ;
 int MPASS (int *) ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_fw_qstatus_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_fw_qstatus_input*,int ) ;

int
bnxt_hwrm_fw_qstatus(struct bnxt_softc *softc, uint8_t type, uint8_t *selfreset)
{
 struct hwrm_fw_qstatus_input req = {0};
 struct hwrm_fw_qstatus_output *resp =
     (void *)softc->hwrm_cmd_resp.idi_vaddr;
 int rc;

 MPASS(selfreset);

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_FW_QSTATUS);
 req.embedded_proc_type = type;

 BNXT_HWRM_LOCK(softc);
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 if (rc)
  goto exit;
 *selfreset = resp->selfrst_status;

exit:
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
