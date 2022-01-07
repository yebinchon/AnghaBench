
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_10__ {int pending_mutex; } ;
typedef TYPE_3__ hv_vss_sc ;
struct TYPE_8__ {int msgid; } ;
struct TYPE_9__ {TYPE_1__ opt_msg; } ;
struct TYPE_11__ {TYPE_2__ vss_req; TYPE_3__* sc; } ;
typedef TYPE_4__ hv_vss_req_internal ;


 int HV_E_FAIL ;
 int KASSERT (int ,char*) ;
 TYPE_4__* hv_vss_drain_req_queue_locked (TYPE_3__*,int ) ;
 int hv_vss_notify_host_result_locked (TYPE_4__*,int ) ;
 int mtx_owned (int *) ;

__attribute__((used)) static void
hv_vss_timeout(void *arg)
{
 hv_vss_req_internal *reqp = arg;
 hv_vss_req_internal *request;
 hv_vss_sc* sc = reqp->sc;
 uint64_t req_id = reqp->vss_req.opt_msg.msgid;

 KASSERT(mtx_owned(&sc->pending_mutex), ("mutex lock is not owned!"));
 request = hv_vss_drain_req_queue_locked(sc, req_id);
 KASSERT(request != ((void*)0), ("timeout but fail to find request"));
 hv_vss_notify_host_result_locked(reqp, HV_E_FAIL);
}
