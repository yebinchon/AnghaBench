
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hv_vss_req_internal {int callout; } ;
struct TYPE_5__ {int to_ack_queue; int to_notify_queue; } ;
struct TYPE_4__ {int to_ack_queue; int to_notify_queue; } ;
struct TYPE_6__ {int pending_mutex; int req_free_list; TYPE_2__ app_sc; TYPE_1__ daemon_sc; } ;
typedef TYPE_3__ hv_vss_sc ;
typedef int device_t ;


 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct hv_vss_req_internal*,int ) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 scalar_t__ device_get_softc (int ) ;
 int link ;
 struct hv_vss_req_internal* malloc (int,int ,int) ;

__attribute__((used)) static int
hv_vss_init_send_receive_queue(device_t dev)
{
 hv_vss_sc *sc = (hv_vss_sc*)device_get_softc(dev);
 int i;
 const int max_list = 4;
 struct hv_vss_req_internal* reqp;

 LIST_INIT(&sc->req_free_list);
 STAILQ_INIT(&sc->daemon_sc.to_notify_queue);
 STAILQ_INIT(&sc->daemon_sc.to_ack_queue);
 STAILQ_INIT(&sc->app_sc.to_notify_queue);
 STAILQ_INIT(&sc->app_sc.to_ack_queue);

 for (i = 0; i < max_list; i++) {
  reqp = malloc(sizeof(struct hv_vss_req_internal),
      M_DEVBUF, M_WAITOK|M_ZERO);
  LIST_INSERT_HEAD(&sc->req_free_list, reqp, link);
  callout_init_mtx(&reqp->callout, &sc->pending_mutex, 0);
 }
 return (0);
}
