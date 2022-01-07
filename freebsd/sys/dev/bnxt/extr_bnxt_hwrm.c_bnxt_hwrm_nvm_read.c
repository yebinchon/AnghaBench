
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct iflib_dma_info {scalar_t__ idi_size; int idi_map; int idi_tag; int idi_paddr; } ;
struct hwrm_nvm_read_input {void* len; void* offset; int dir_idx; int host_dest_addr; int member_0; } ;
struct bnxt_softc {scalar_t__ hwrm_cmd_timeo; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 scalar_t__ BNXT_NVM_TIMEO ;
 int BUS_DMASYNC_POSTREAD ;
 int EINVAL ;
 int HWRM_NVM_READ ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_nvm_read_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_nvm_read_input*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int htole16 (int ) ;
 void* htole32 (scalar_t__) ;
 int htole64 (int ) ;

int
bnxt_hwrm_nvm_read(struct bnxt_softc *softc, uint16_t index, uint32_t offset,
    uint32_t length, struct iflib_dma_info *data)
{
 struct hwrm_nvm_read_input req = {0};
 int rc;
 uint32_t old_timeo;

 if (length > data->idi_size) {
  rc = EINVAL;
  goto exit;
 }
 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_NVM_READ);
 req.host_dest_addr = htole64(data->idi_paddr);
 req.dir_idx = htole16(index);
 req.offset = htole32(offset);
 req.len = htole32(length);
 BNXT_HWRM_LOCK(softc);
 old_timeo = softc->hwrm_cmd_timeo;
 softc->hwrm_cmd_timeo = BNXT_NVM_TIMEO;
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 softc->hwrm_cmd_timeo = old_timeo;
 BNXT_HWRM_UNLOCK(softc);
 if (rc)
  goto exit;
 bus_dmamap_sync(data->idi_tag, data->idi_map, BUS_DMASYNC_POSTREAD);

 goto exit;

exit:
 return rc;
}
