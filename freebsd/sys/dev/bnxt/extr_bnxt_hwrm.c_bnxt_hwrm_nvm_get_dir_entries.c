
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iflib_dma_info {int idi_size; int idi_map; int idi_tag; int idi_paddr; } ;
struct hwrm_nvm_get_dir_entries_input {int host_dest_addr; int member_0; } ;
struct bnxt_softc {int hwrm_cmd_timeo; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_NVM_TIMEO ;
 int BUS_DMASYNC_POSTWRITE ;
 int EINVAL ;
 int HWRM_NVM_GET_DIR_ENTRIES ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_nvm_get_dir_entries_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_nvm_get_dir_entries_input*,int ) ;
 int bnxt_hwrm_nvm_get_dir_info (struct bnxt_softc*,int*,int*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int htole64 (int ) ;

int
bnxt_hwrm_nvm_get_dir_entries(struct bnxt_softc *softc, uint32_t *entries,
    uint32_t *entry_length, struct iflib_dma_info *dma_data)
{
 struct hwrm_nvm_get_dir_entries_input req = {0};
 uint32_t ent;
 uint32_t ent_len;
 int rc;
 uint32_t old_timeo;

 if (!entries)
  entries = &ent;
 if (!entry_length)
  entry_length = &ent_len;

 rc = bnxt_hwrm_nvm_get_dir_info(softc, entries, entry_length);
 if (rc)
  goto exit;
 if (*entries * *entry_length > dma_data->idi_size) {
  rc = EINVAL;
  goto exit;
 }






 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_NVM_GET_DIR_ENTRIES);
 req.host_dest_addr = htole64(dma_data->idi_paddr);
 BNXT_HWRM_LOCK(softc);
 old_timeo = softc->hwrm_cmd_timeo;
 softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 softc->hwrm_cmd_timeo = old_timeo;
 BNXT_HWRM_UNLOCK(softc);
 if (rc)
  goto exit;
 bus_dmamap_sync(dma_data->idi_tag, dma_data->idi_map,
     BUS_DMASYNC_POSTWRITE);

exit:
 return rc;
}
