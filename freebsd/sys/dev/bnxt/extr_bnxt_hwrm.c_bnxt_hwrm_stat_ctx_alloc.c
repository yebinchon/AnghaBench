
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct hwrm_stat_ctx_alloc_output {int stat_ctx_id; } ;
struct hwrm_stat_ctx_alloc_input {int stats_dma_addr; int update_period_ms; int member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_cmd_resp; int dev; } ;
struct bnxt_cp_ring {int stats_ctx_id; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int EDOOFUS ;
 int HWRM_NA_SIGNATURE ;
 int HWRM_STAT_CTX_ALLOC ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_stat_ctx_alloc_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_stat_ctx_alloc_input*,int ) ;
 int device_printf (int ,char*,int ) ;
 int htole32 (int) ;
 int htole64 (int ) ;
 int le32toh (int ) ;

int
bnxt_hwrm_stat_ctx_alloc(struct bnxt_softc *softc, struct bnxt_cp_ring *cpr,
    uint64_t paddr)
{
 struct hwrm_stat_ctx_alloc_input req = {0};
 struct hwrm_stat_ctx_alloc_output *resp;
 int rc = 0;

 if (cpr->stats_ctx_id != HWRM_NA_SIGNATURE) {
  device_printf(softc->dev,
      "Attempt to re-allocate stats ctx %08x\n",
      cpr->stats_ctx_id);
  return EDOOFUS;
 }

 resp = (void *)softc->hwrm_cmd_resp.idi_vaddr;
 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_STAT_CTX_ALLOC);

 req.update_period_ms = htole32(1000);
 req.stats_dma_addr = htole64(paddr);

 BNXT_HWRM_LOCK(softc);
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 if (rc)
  goto fail;

 cpr->stats_ctx_id = le32toh(resp->stat_ctx_id);

fail:
 BNXT_HWRM_UNLOCK(softc);

 return rc;
}
