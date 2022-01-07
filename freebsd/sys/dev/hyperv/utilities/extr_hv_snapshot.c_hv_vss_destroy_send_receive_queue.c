
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int to_ack_queue; int to_notify_queue; } ;
struct TYPE_4__ {int to_ack_queue; int to_notify_queue; } ;
struct TYPE_6__ {TYPE_2__ app_sc; TYPE_1__ daemon_sc; int req_free_list; } ;
typedef TYPE_3__ hv_vss_sc ;
typedef int hv_vss_req_internal ;
typedef int device_t ;


 int LIST_EMPTY (int *) ;
 int * LIST_FIRST (int *) ;
 int LIST_REMOVE (int *,int ) ;
 int M_DEVBUF ;
 int STAILQ_EMPTY (int *) ;
 int * STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 scalar_t__ device_get_softc (int ) ;
 int free (int *,int ) ;
 int link ;
 int slink ;

__attribute__((used)) static int
hv_vss_destroy_send_receive_queue(device_t dev)
{
 hv_vss_sc *sc = (hv_vss_sc*)device_get_softc(dev);
 hv_vss_req_internal* reqp;

 while (!LIST_EMPTY(&sc->req_free_list)) {
  reqp = LIST_FIRST(&sc->req_free_list);
  LIST_REMOVE(reqp, link);
  free(reqp, M_DEVBUF);
 }

 while (!STAILQ_EMPTY(&sc->daemon_sc.to_notify_queue)) {
  reqp = STAILQ_FIRST(&sc->daemon_sc.to_notify_queue);
  STAILQ_REMOVE_HEAD(&sc->daemon_sc.to_notify_queue, slink);
  free(reqp, M_DEVBUF);
 }

 while (!STAILQ_EMPTY(&sc->daemon_sc.to_ack_queue)) {
  reqp = STAILQ_FIRST(&sc->daemon_sc.to_ack_queue);
  STAILQ_REMOVE_HEAD(&sc->daemon_sc.to_ack_queue, slink);
  free(reqp, M_DEVBUF);
 }

 while (!STAILQ_EMPTY(&sc->app_sc.to_notify_queue)) {
  reqp = STAILQ_FIRST(&sc->app_sc.to_notify_queue);
  STAILQ_REMOVE_HEAD(&sc->app_sc.to_notify_queue, slink);
  free(reqp, M_DEVBUF);
 }

 while (!STAILQ_EMPTY(&sc->app_sc.to_ack_queue)) {
  reqp = STAILQ_FIRST(&sc->app_sc.to_ack_queue);
  STAILQ_REMOVE_HEAD(&sc->app_sc.to_ack_queue, slink);
  free(reqp, M_DEVBUF);
 }
 return (0);
}
