
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct hwrm_nvm_install_update_output {int reset_required; int problem_item; int result; int installed_items; } ;
struct hwrm_nvm_install_update_input {int install_type; int member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int hwrm_cmd_timeo; TYPE_1__ hwrm_cmd_resp; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_NVM_TIMEO ;
 int HWRM_NVM_INSTALL_UPDATE ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_nvm_install_update_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_nvm_install_update_input*,int ) ;
 int htole32 (int ) ;
 int le32toh (int ) ;

int
bnxt_hwrm_nvm_install_update(struct bnxt_softc *softc,
    uint32_t install_type, uint64_t *installed_items, uint8_t *result,
    uint8_t *problem_item, uint8_t *reset_required)
{
 struct hwrm_nvm_install_update_input req = {0};
 struct hwrm_nvm_install_update_output *resp =
     (void *)softc->hwrm_cmd_resp.idi_vaddr;
 int rc;
 uint32_t old_timeo;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_NVM_INSTALL_UPDATE);
 req.install_type = htole32(install_type);

 BNXT_HWRM_LOCK(softc);
 old_timeo = softc->hwrm_cmd_timeo;
 softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 softc->hwrm_cmd_timeo = old_timeo;
 if (rc)
  goto exit;

 if (installed_items)
  *installed_items = le32toh(resp->installed_items);
 if (result)
  *result = resp->result;
 if (problem_item)
  *problem_item = resp->problem_item;
 if (reset_required)
  *reset_required = resp->reset_required;

exit:
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
