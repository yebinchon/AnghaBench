
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct hv_vss_req_internal {int dummy; } ;
struct TYPE_5__ {int to_ack_queue; int to_notify_queue; } ;
struct TYPE_6__ {int to_ack_queue; int to_notify_queue; } ;
struct TYPE_7__ {TYPE_1__ app_sc; TYPE_2__ daemon_sc; } ;
typedef TYPE_3__ hv_vss_sc ;


 int SEARCH_REMOVE_REQ_LOCKED (struct hv_vss_req_internal*,int *,int ,struct hv_vss_req_internal*,int ) ;
 int slink ;

__attribute__((used)) static struct hv_vss_req_internal*
hv_vss_drain_req_queue_locked(hv_vss_sc *sc, uint64_t req_id)
{
 struct hv_vss_req_internal *reqp, *tmp;
 SEARCH_REMOVE_REQ_LOCKED(reqp, &sc->daemon_sc.to_notify_queue,
     slink, tmp, req_id);
 if (reqp == ((void*)0))
  SEARCH_REMOVE_REQ_LOCKED(reqp, &sc->daemon_sc.to_ack_queue,
      slink, tmp, req_id);
 if (reqp == ((void*)0))
  SEARCH_REMOVE_REQ_LOCKED(reqp, &sc->app_sc.to_notify_queue,
      slink, tmp, req_id);
 if (reqp == ((void*)0))
  SEARCH_REMOVE_REQ_LOCKED(reqp, &sc->app_sc.to_ack_queue, slink,
      tmp, req_id);
 return (reqp);
}
