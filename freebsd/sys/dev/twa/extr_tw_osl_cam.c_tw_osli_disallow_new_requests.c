
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct twa_softc {int sim; } ;
struct tw_osli_req_context {scalar_t__ orig_req; } ;
struct tw_cl_req_handle {struct tw_osli_req_context* osl_req_ctxt; scalar_t__ is_io; } ;
typedef int TW_VOID ;


 int CAM_RELEASE_SIMQ ;
 int xpt_freeze_simq (int ,int) ;

TW_VOID
tw_osli_disallow_new_requests(struct twa_softc *sc,
 struct tw_cl_req_handle *req_handle)
{

 if (req_handle->is_io) {
  struct tw_osli_req_context *req = req_handle->osl_req_ctxt;
  union ccb *ccb = (union ccb *)(req->orig_req);

  xpt_freeze_simq(sc->sim, 1);
  ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
 }
}
