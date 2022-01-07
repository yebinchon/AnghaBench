
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hwrm_wol_filter_alloc_output {int wol_filter_id; } ;
struct hwrm_wol_filter_alloc_input {int mac_address; int enables; int wol_type; int port_id; int member_0; } ;
struct TYPE_5__ {int mac_addr; } ;
struct TYPE_4__ {int port_id; } ;
struct TYPE_6__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int wol_filter_id; TYPE_2__ func; TYPE_1__ pf; TYPE_3__ hwrm_cmd_resp; } ;
typedef int req ;


 int ETHER_ADDR_LEN ;
 int HWRM_WOL_FILTER_ALLOC ;
 int HWRM_WOL_FILTER_ALLOC_INPUT_ENABLES_MAC_ADDRESS ;
 int HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_wol_filter_alloc_input*,int ) ;
 int htole16 (int ) ;
 int htole32 (int ) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_wol_filter_alloc_input*,int) ;
 int memcpy (int ,int ,int ) ;

int
bnxt_hwrm_alloc_wol_fltr(struct bnxt_softc *softc)
{
 struct hwrm_wol_filter_alloc_input req = {0};
 struct hwrm_wol_filter_alloc_output *resp =
  (void *)softc->hwrm_cmd_resp.idi_vaddr;
 int rc;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_WOL_FILTER_ALLOC);
 req.port_id = htole16(softc->pf.port_id);
 req.wol_type = HWRM_WOL_FILTER_ALLOC_INPUT_WOL_TYPE_MAGICPKT;
 req.enables =
  htole32(HWRM_WOL_FILTER_ALLOC_INPUT_ENABLES_MAC_ADDRESS);
 memcpy(req.mac_address, softc->func.mac_addr, ETHER_ADDR_LEN);
 rc = hwrm_send_message(softc, &req, sizeof(req));
 if (!rc)
  softc->wol_filter_id = resp->wol_filter_id;

 return rc;
}
