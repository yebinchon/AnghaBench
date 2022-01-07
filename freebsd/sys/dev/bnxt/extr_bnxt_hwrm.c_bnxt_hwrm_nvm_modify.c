
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct iflib_dma_info {int idi_paddr; int idi_map; int idi_tag; int idi_vaddr; } ;
struct hwrm_nvm_modify_input {void* len; void* offset; int dir_idx; int host_src_addr; int member_0; } ;
struct bnxt_softc {int hwrm_cmd_timeo; int ctx; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_NVM_TIMEO ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int EINVAL ;
 int ENOMEM ;
 int HWRM_NVM_MODIFY ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_nvm_modify_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_nvm_modify_input*,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int copyin (void*,int ,int ) ;
 int htole16 (int ) ;
 void* htole32 (int ) ;
 int htole64 (int ) ;
 int iflib_dma_alloc (int ,int ,struct iflib_dma_info*,int ) ;
 int iflib_dma_free (struct iflib_dma_info*) ;
 int memcpy (int ,void*,int ) ;

int
bnxt_hwrm_nvm_modify(struct bnxt_softc *softc, uint16_t index, uint32_t offset,
    void *data, bool cpyin, uint32_t length)
{
 struct hwrm_nvm_modify_input req = {0};
 struct iflib_dma_info dma_data;
 int rc;
 uint32_t old_timeo;

 if (length == 0 || !data)
  return EINVAL;
 rc = iflib_dma_alloc(softc->ctx, length, &dma_data,
     BUS_DMA_NOWAIT);
 if (rc)
  return ENOMEM;
 if (cpyin) {
  rc = copyin(data, dma_data.idi_vaddr, length);
  if (rc)
   goto exit;
 }
 else
  memcpy(dma_data.idi_vaddr, data, length);
 bus_dmamap_sync(dma_data.idi_tag, dma_data.idi_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_NVM_MODIFY);
 req.host_src_addr = htole64(dma_data.idi_paddr);
 req.dir_idx = htole16(index);
 req.offset = htole32(offset);
 req.len = htole32(length);
 BNXT_HWRM_LOCK(softc);
 old_timeo = softc->hwrm_cmd_timeo;
 softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 softc->hwrm_cmd_timeo = old_timeo;
 BNXT_HWRM_UNLOCK(softc);

exit:
 iflib_dma_free(&dma_data);
 return rc;
}
