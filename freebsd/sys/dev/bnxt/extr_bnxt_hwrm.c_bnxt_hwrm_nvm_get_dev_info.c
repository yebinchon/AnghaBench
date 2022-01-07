
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct hwrm_nvm_get_dev_info_output {int available_size; int reserved_size; int nvram_size; int sector_size; int device_id; int manufacturer_id; } ;
struct hwrm_nvm_get_dev_info_input {int member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int hwrm_cmd_timeo; TYPE_1__ hwrm_cmd_resp; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_NVM_TIMEO ;
 int HWRM_NVM_GET_DEV_INFO ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_nvm_get_dev_info_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_nvm_get_dev_info_input*,int ) ;
 int le16toh (int ) ;
 int le32toh (int ) ;

int
bnxt_hwrm_nvm_get_dev_info(struct bnxt_softc *softc, uint16_t *mfg_id,
    uint16_t *device_id, uint32_t *sector_size, uint32_t *nvram_size,
    uint32_t *reserved_size, uint32_t *available_size)
{
 struct hwrm_nvm_get_dev_info_input req = {0};
 struct hwrm_nvm_get_dev_info_output *resp =
     (void *)softc->hwrm_cmd_resp.idi_vaddr;
 int rc;
 uint32_t old_timeo;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_NVM_GET_DEV_INFO);

 BNXT_HWRM_LOCK(softc);
 old_timeo = softc->hwrm_cmd_timeo;
 softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 softc->hwrm_cmd_timeo = old_timeo;
 if (rc)
  goto exit;

 if (mfg_id)
  *mfg_id = le16toh(resp->manufacturer_id);
 if (device_id)
  *device_id = le16toh(resp->device_id);
 if (sector_size)
  *sector_size = le32toh(resp->sector_size);
 if (nvram_size)
  *nvram_size = le32toh(resp->nvram_size);
 if (reserved_size)
  *reserved_size = le32toh(resp->reserved_size);
 if (available_size)
  *available_size = le32toh(resp->available_size);

exit:
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
