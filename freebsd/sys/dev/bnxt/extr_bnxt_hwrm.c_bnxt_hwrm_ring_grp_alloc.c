
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct hwrm_ring_grp_alloc_output {int ring_group_id; } ;
struct hwrm_ring_grp_alloc_input {void* sc; void* ar; void* rr; void* cr; int member_0; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {TYPE_1__ hwrm_cmd_resp; int dev; } ;
struct bnxt_grp_info {int grp_id; int stats_ctx; int ag_ring_id; int rx_ring_id; int cp_ring_id; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int EDOOFUS ;
 scalar_t__ HWRM_NA_SIGNATURE ;
 int HWRM_RING_GRP_ALLOC ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_ring_grp_alloc_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_ring_grp_alloc_input*,int ) ;
 int device_printf (int ,char*,int ) ;
 void* htole16 (int ) ;
 int le32toh (int ) ;

int
bnxt_hwrm_ring_grp_alloc(struct bnxt_softc *softc, struct bnxt_grp_info *grp)
{
 struct hwrm_ring_grp_alloc_input req = {0};
 struct hwrm_ring_grp_alloc_output *resp;
 int rc = 0;

 if (grp->grp_id != (uint16_t)HWRM_NA_SIGNATURE) {
  device_printf(softc->dev,
      "Attempt to re-allocate ring group %04x\n", grp->grp_id);
  return EDOOFUS;
 }

 resp = (void *)softc->hwrm_cmd_resp.idi_vaddr;
 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_RING_GRP_ALLOC);
 req.cr = htole16(grp->cp_ring_id);
 req.rr = htole16(grp->rx_ring_id);
 req.ar = htole16(grp->ag_ring_id);
 req.sc = htole16(grp->stats_ctx);

 BNXT_HWRM_LOCK(softc);
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 if (rc)
  goto fail;

 grp->grp_id = le32toh(resp->ring_group_id);

fail:
 BNXT_HWRM_UNLOCK(softc);
 return rc;
}
