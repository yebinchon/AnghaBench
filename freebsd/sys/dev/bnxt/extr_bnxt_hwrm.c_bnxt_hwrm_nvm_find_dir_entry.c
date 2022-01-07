
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct hwrm_nvm_find_dir_entry_output {int dir_idx; int dir_ordinal; int fw_ver; int dir_data_length; int dir_item_length; } ;
struct hwrm_nvm_find_dir_entry_input {int opt_ordinal; void* dir_ext; void* dir_ordinal; void* dir_type; void* dir_idx; int enables; int member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int hwrm_cmd_timeo; TYPE_1__ hwrm_cmd_resp; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_NVM_TIMEO ;
 int HWRM_NVM_FIND_DIR_ENTRY ;
 int HWRM_NVM_FIND_DIR_ENTRY_INPUT_ENABLES_DIR_IDX_VALID ;
 int MPASS (int *) ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_nvm_find_dir_entry_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_nvm_find_dir_entry_input*,int ) ;
 void* htole16 (int ) ;
 int htole32 (int ) ;
 int le16toh (int ) ;
 int le32toh (int ) ;

int
bnxt_hwrm_nvm_find_dir_entry(struct bnxt_softc *softc, uint16_t type,
    uint16_t *ordinal, uint16_t ext, uint16_t *index, bool use_index,
    uint8_t search_opt, uint32_t *data_length, uint32_t *item_length,
    uint32_t *fw_ver)
{
 struct hwrm_nvm_find_dir_entry_input req = {0};
 struct hwrm_nvm_find_dir_entry_output *resp =
     (void *)softc->hwrm_cmd_resp.idi_vaddr;
 int rc = 0;
 uint32_t old_timeo;

 MPASS(ordinal);

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_NVM_FIND_DIR_ENTRY);
 if (use_index) {
  req.enables = htole32(
      HWRM_NVM_FIND_DIR_ENTRY_INPUT_ENABLES_DIR_IDX_VALID);
  req.dir_idx = htole16(*index);
 }
 req.dir_type = htole16(type);
 req.dir_ordinal = htole16(*ordinal);
 req.dir_ext = htole16(ext);
 req.opt_ordinal = search_opt;

 BNXT_HWRM_LOCK(softc);
 old_timeo = softc->hwrm_cmd_timeo;
 softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 softc->hwrm_cmd_timeo = old_timeo;
 if (rc)
  goto exit;

 if (item_length)
  *item_length = le32toh(resp->dir_item_length);
 if (data_length)
  *data_length = le32toh(resp->dir_data_length);
 if (fw_ver)
  *fw_ver = le32toh(resp->fw_ver);
 *ordinal = le16toh(resp->dir_ordinal);
 if (index)
  *index = le16toh(resp->dir_idx);

exit:
 BNXT_HWRM_UNLOCK(softc);
 return (rc);
}
