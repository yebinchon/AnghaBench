
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwrm_wol_filter_free_input {int wol_filter_id; int enables; int port_id; int member_0; } ;
struct TYPE_2__ {int port_id; } ;
struct bnxt_softc {int wol_filter_id; TYPE_1__ pf; } ;
typedef int req ;


 int HWRM_WOL_FILTER_FREE ;
 int HWRM_WOL_FILTER_FREE_INPUT_ENABLES_WOL_FILTER_ID ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_wol_filter_free_input*,int ) ;
 int htole16 (int ) ;
 int htole32 (int ) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_wol_filter_free_input*,int) ;

int
bnxt_hwrm_free_wol_fltr(struct bnxt_softc *softc)
{
 struct hwrm_wol_filter_free_input req = {0};

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_WOL_FILTER_FREE);
 req.port_id = htole16(softc->pf.port_id);
 req.enables =
  htole32(HWRM_WOL_FILTER_FREE_INPUT_ENABLES_WOL_FILTER_ID);
 req.wol_filter_id = softc->wol_filter_id;
 return hwrm_send_message(softc, &req, sizeof(req));
}
