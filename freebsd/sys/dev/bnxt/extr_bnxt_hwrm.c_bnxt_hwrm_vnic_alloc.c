
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct hwrm_vnic_alloc_output {int vnic_id; } ;
struct hwrm_vnic_alloc_input {int flags; int member_0; } ;
struct bnxt_vnic_info {int flags; int id; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int dev; TYPE_1__ hwrm_cmd_resp; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int BNXT_VNIC_FLAG_DEFAULT ;
 int EDOOFUS ;
 scalar_t__ HWRM_NA_SIGNATURE ;
 int HWRM_VNIC_ALLOC ;
 int HWRM_VNIC_ALLOC_INPUT_FLAGS_DEFAULT ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_vnic_alloc_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_vnic_alloc_input*,int ) ;
 int device_printf (int ,char*,int ) ;
 int htole32 (int ) ;
 int le32toh (int ) ;

int
bnxt_hwrm_vnic_alloc(struct bnxt_softc *softc, struct bnxt_vnic_info *vnic)
{
 struct hwrm_vnic_alloc_input req = {0};
 struct hwrm_vnic_alloc_output *resp =
     (void *)softc->hwrm_cmd_resp.idi_vaddr;
 int rc;

 if (vnic->id != (uint16_t)HWRM_NA_SIGNATURE) {
  device_printf(softc->dev,
      "Attempt to re-allocate vnic %04x\n", vnic->id);
  return EDOOFUS;
 }

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_VNIC_ALLOC);

 if (vnic->flags & BNXT_VNIC_FLAG_DEFAULT)
  req.flags = htole32(HWRM_VNIC_ALLOC_INPUT_FLAGS_DEFAULT);

 BNXT_HWRM_LOCK(softc);
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 if (rc)
  goto fail;

 vnic->id = le32toh(resp->vnic_id);

fail:
 BNXT_HWRM_UNLOCK(softc);
 return (rc);
}
