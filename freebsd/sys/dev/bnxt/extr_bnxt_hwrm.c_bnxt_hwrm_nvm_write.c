
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct iflib_dma_info {scalar_t__ idi_paddr; int idi_map; int idi_tag; int idi_vaddr; } ;
struct hwrm_nvm_write_output {int dir_idx; int dir_item_length; } ;
struct hwrm_nvm_write_input {void* dir_item_length; void* flags; void* option; void* dir_data_length; void* dir_attr; void* dir_ext; void* dir_ordinal; void* dir_type; int host_src_addr; int member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int hwrm_cmd_timeo; int ctx; TYPE_1__ hwrm_cmd_resp; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_NVM_TIMEO ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int ENOMEM ;
 int HWRM_NVM_WRITE ;
 int HWRM_NVM_WRITE_INPUT_FLAGS_KEEP_ORIG_ACTIVE_IMG ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_nvm_write_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_nvm_write_input*,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int copyin (void*,int ,int ) ;
 void* htole16 (int ) ;
 void* htole32 (int ) ;
 int htole64 (scalar_t__) ;
 int iflib_dma_alloc (int ,int ,struct iflib_dma_info*,int ) ;
 int iflib_dma_free (struct iflib_dma_info*) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int memcpy (int ,void*,int ) ;

int
bnxt_hwrm_nvm_write(struct bnxt_softc *softc, void *data, bool cpyin,
    uint16_t type, uint16_t ordinal, uint16_t ext, uint16_t attr,
    uint16_t option, uint32_t data_length, bool keep, uint32_t *item_length,
    uint16_t *index)
{
 struct hwrm_nvm_write_input req = {0};
 struct hwrm_nvm_write_output *resp =
     (void *)softc->hwrm_cmd_resp.idi_vaddr;
 struct iflib_dma_info dma_data;
 int rc;
 uint32_t old_timeo;

 if (data_length) {
  rc = iflib_dma_alloc(softc->ctx, data_length, &dma_data,
      BUS_DMA_NOWAIT);
  if (rc)
   return ENOMEM;
  if (cpyin) {
   rc = copyin(data, dma_data.idi_vaddr, data_length);
   if (rc)
    goto early_exit;
  }
  else
   memcpy(dma_data.idi_vaddr, data, data_length);
  bus_dmamap_sync(dma_data.idi_tag, dma_data.idi_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }
 else
  dma_data.idi_paddr = 0;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_NVM_WRITE);

 req.host_src_addr = htole64(dma_data.idi_paddr);
 req.dir_type = htole16(type);
 req.dir_ordinal = htole16(ordinal);
 req.dir_ext = htole16(ext);
 req.dir_attr = htole16(attr);
 req.dir_data_length = htole32(data_length);
 req.option = htole16(option);
 if (keep) {
  req.flags =
      htole16(HWRM_NVM_WRITE_INPUT_FLAGS_KEEP_ORIG_ACTIVE_IMG);
 }
 if (item_length)
  req.dir_item_length = htole32(*item_length);

 BNXT_HWRM_LOCK(softc);
 old_timeo = softc->hwrm_cmd_timeo;
 softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 softc->hwrm_cmd_timeo = old_timeo;
 if (rc)
  goto exit;
 if (item_length)
  *item_length = le32toh(resp->dir_item_length);
 if (index)
  *index = le16toh(resp->dir_idx);

exit:
 BNXT_HWRM_UNLOCK(softc);
early_exit:
 if (data_length)
  iflib_dma_free(&dma_data);
 return rc;
}
