
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int daemon_sc; int app_sc; int app_register_done; } ;
typedef TYPE_1__ hv_vss_sc ;
struct TYPE_7__ {int callout; TYPE_1__* sc; } ;
typedef TYPE_2__ hv_vss_req_internal ;


 int TIMEOUT_LIMIT ;



 int callout_reset (int *,int,int ,TYPE_2__*) ;
 int hv_vss_notify (int *,TYPE_2__*) ;
 int hv_vss_timeout ;
 int hz ;

__attribute__((used)) static void
hv_vss_start_notify(hv_vss_req_internal *reqp, uint32_t opt)
{
 hv_vss_sc *sc = reqp->sc;







 switch (opt) {
 case 130:
 case 129:
  if (sc->app_register_done)
   hv_vss_notify(&sc->app_sc, reqp);
  else
   hv_vss_notify(&sc->daemon_sc, reqp);
  callout_reset(&reqp->callout, TIMEOUT_LIMIT * hz,
      hv_vss_timeout, reqp);
  break;
 case 128:
  hv_vss_notify(&sc->daemon_sc, reqp);
  callout_reset(&reqp->callout, TIMEOUT_LIMIT * hz,
      hv_vss_timeout, reqp);
  break;
 }
}
