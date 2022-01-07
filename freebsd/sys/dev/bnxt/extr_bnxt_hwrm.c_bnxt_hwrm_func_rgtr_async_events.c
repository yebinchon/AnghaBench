
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hwrm_func_drv_rgtr_input {int * async_event_fwd; int enables; int member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef int req ;
typedef int bitstr_t ;


 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_SPEED_CFG_CHANGE ;
 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_STATUS_CHANGE ;
 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PF_DRVR_UNLOAD ;
 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PORT_CONN_NOT_ALLOWED ;
 int HWRM_ASYNC_EVENT_CMPL_EVENT_ID_VF_CFG_CHANGE ;
 int HWRM_FUNC_DRV_RGTR ;
 int HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_ASYNC_EVENT_FWD ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int * bit_alloc (int,int ,int) ;
 int bit_set (int *,int) ;
 scalar_t__ bit_test (unsigned long*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_func_drv_rgtr_input*,int ) ;
 int free (int *,int ) ;
 int htole32 (int ) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_func_drv_rgtr_input*,int) ;
 int memset (int *,int ,int) ;

int bnxt_hwrm_func_rgtr_async_events(struct bnxt_softc *softc, unsigned long *bmap,
                                     int bmap_size)
{
 struct hwrm_func_drv_rgtr_input req = {0};
 bitstr_t *async_events_bmap;
 uint32_t *events;
 int i;

 async_events_bmap = bit_alloc(256, M_DEVBUF, M_WAITOK|M_ZERO);
 events = (uint32_t *)async_events_bmap;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_FUNC_DRV_RGTR);

 req.enables =
  htole32(HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_ASYNC_EVENT_FWD);

 memset(async_events_bmap, 0, sizeof(256 / 8));

 bit_set(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_STATUS_CHANGE);
 bit_set(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PF_DRVR_UNLOAD);
 bit_set(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_PORT_CONN_NOT_ALLOWED);
 bit_set(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_VF_CFG_CHANGE);
 bit_set(async_events_bmap, HWRM_ASYNC_EVENT_CMPL_EVENT_ID_LINK_SPEED_CFG_CHANGE);

 if (bmap && bmap_size) {
  for (i = 0; i < bmap_size; i++) {
   if (bit_test(bmap, i))
    bit_set(async_events_bmap, i);
  }
 }

 for (i = 0; i < 8; i++)
  req.async_event_fwd[i] |= htole32(events[i]);

 free(async_events_bmap, M_DEVBUF);

 return hwrm_send_message(softc, &req, sizeof(req));
}
