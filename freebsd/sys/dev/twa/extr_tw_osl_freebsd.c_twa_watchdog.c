
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int bus_dev; int ctlr_handle; int * watchdog_callout; int watchdog_index; struct tw_osli_req_context* req_ctx_buf; } ;
struct tw_osli_req_context {scalar_t__ state; scalar_t__ deadline; } ;
struct tw_cl_ctlr_handle {struct twa_softc* osl_ctlr_ctxt; } ;
typedef int TW_VOID ;
typedef scalar_t__ TW_UINT64 ;


 int TW_OSLI_MAX_NUM_REQUESTS ;
 scalar_t__ TW_OSLI_REQ_STATE_BUSY ;
 int callout_reset (int *,int,int (*) (int *),int *) ;
 int device_printf (int ,char*,...) ;
 int hz ;
 int tw_cl_is_active (struct tw_cl_ctlr_handle*) ;
 int tw_cl_is_reset_needed (struct tw_cl_ctlr_handle*) ;
 int tw_cl_reset_ctlr (struct tw_cl_ctlr_handle*) ;
 int tw_cl_set_reset_needed (struct tw_cl_ctlr_handle*) ;
 scalar_t__ tw_osl_get_local_time () ;

__attribute__((used)) static TW_VOID
twa_watchdog(TW_VOID *arg)
{
 struct tw_cl_ctlr_handle *ctlr_handle =
  (struct tw_cl_ctlr_handle *)arg;
 struct twa_softc *sc = ctlr_handle->osl_ctlr_ctxt;
 int i;
 int i_need_a_reset = 0;
 int driver_is_active = 0;
 int my_watchdog_was_pending = 1234;
 TW_UINT64 current_time;
 struct tw_osli_req_context *my_req;



 current_time = (TW_UINT64) (tw_osl_get_local_time());

 for (i = 0; i < TW_OSLI_MAX_NUM_REQUESTS; i++) {
  my_req = &(sc->req_ctx_buf[i]);

  if ((my_req->state == TW_OSLI_REQ_STATE_BUSY) &&
   (my_req->deadline) &&
   (my_req->deadline < current_time)) {
   tw_cl_set_reset_needed(ctlr_handle);



   device_printf((sc)->bus_dev, "Request %d timed out!\n", i);

   break;
  }
 }


 i_need_a_reset = tw_cl_is_reset_needed(ctlr_handle);

 i = (int) ((sc->watchdog_index++) & 1);

 driver_is_active = tw_cl_is_active(ctlr_handle);

 if (i_need_a_reset) {



  my_watchdog_was_pending =
   callout_reset(&(sc->watchdog_callout[i]), 70*hz, twa_watchdog, &sc->ctlr_handle);
  tw_cl_reset_ctlr(ctlr_handle);



 } else if (driver_is_active) {
  my_watchdog_was_pending =
   callout_reset(&(sc->watchdog_callout[i]), 5*hz, twa_watchdog, &sc->ctlr_handle);
 }






}
