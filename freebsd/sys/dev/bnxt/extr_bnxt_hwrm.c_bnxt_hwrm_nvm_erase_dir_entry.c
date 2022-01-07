
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct hwrm_nvm_erase_dir_entry_input {int dir_idx; int member_0; } ;
struct bnxt_softc {int hwrm_cmd_timeo; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_NVM_TIMEO ;
 int HWRM_NVM_ERASE_DIR_ENTRY ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_nvm_erase_dir_entry_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_nvm_erase_dir_entry_input*,int ) ;
 int htole16 (int ) ;

int
bnxt_hwrm_nvm_erase_dir_entry(struct bnxt_softc *softc, uint16_t index)
{
 struct hwrm_nvm_erase_dir_entry_input req = {0};
 uint32_t old_timeo;
 int rc;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_NVM_ERASE_DIR_ENTRY);
 req.dir_idx = htole16(index);
 BNXT_HWRM_LOCK(softc);
 old_timeo = softc->hwrm_cmd_timeo;
 softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 softc->hwrm_cmd_timeo = old_timeo;
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
