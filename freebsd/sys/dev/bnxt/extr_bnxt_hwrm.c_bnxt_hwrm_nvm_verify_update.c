
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct hwrm_nvm_verify_update_input {void* dir_ext; void* dir_ordinal; void* dir_type; int member_0; } ;
struct bnxt_softc {int hwrm_cmd_timeo; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_NVM_TIMEO ;
 int HWRM_NVM_VERIFY_UPDATE ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_nvm_verify_update_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_nvm_verify_update_input*,int ) ;
 void* htole16 (int ) ;

int
bnxt_hwrm_nvm_verify_update(struct bnxt_softc *softc, uint16_t type,
    uint16_t ordinal, uint16_t ext)
{
 struct hwrm_nvm_verify_update_input req = {0};
 uint32_t old_timeo;
 int rc;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_NVM_VERIFY_UPDATE);

 req.dir_type = htole16(type);
 req.dir_ordinal = htole16(ordinal);
 req.dir_ext = htole16(ext);

 BNXT_HWRM_LOCK(softc);
 old_timeo = softc->hwrm_cmd_timeo;
 softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 softc->hwrm_cmd_timeo = old_timeo;
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
