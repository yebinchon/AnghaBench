
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct hv_vss_req_internal {TYPE_1__* sc; } ;
struct TYPE_2__ {int pending_mutex; } ;


 int hv_vss_notify_host_result_locked (struct hv_vss_req_internal*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
hv_vss_notify_host_result(struct hv_vss_req_internal *reqp, uint32_t status)
{
 mtx_lock(&reqp->sc->pending_mutex);
 hv_vss_notify_host_result_locked(reqp, status);
 mtx_unlock(&reqp->sc->pending_mutex);
}
