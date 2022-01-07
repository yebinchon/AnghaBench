
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t vifi_t ;
struct sioc_vif_req {size_t vifi; int obytes; int ibytes; int ocount; int icount; } ;
struct TYPE_2__ {int v_bytes_out; int v_bytes_in; int v_pkt_out; int v_pkt_in; } ;


 int EINVAL ;
 int VIF_LOCK () ;
 int VIF_UNLOCK () ;
 size_t V_numvifs ;
 TYPE_1__* V_viftable ;

__attribute__((used)) static int
get_vif_cnt(struct sioc_vif_req *req)
{
    vifi_t vifi = req->vifi;

    VIF_LOCK();
    if (vifi >= V_numvifs) {
 VIF_UNLOCK();
 return EINVAL;
    }

    req->icount = V_viftable[vifi].v_pkt_in;
    req->ocount = V_viftable[vifi].v_pkt_out;
    req->ibytes = V_viftable[vifi].v_bytes_in;
    req->obytes = V_viftable[vifi].v_bytes_out;
    VIF_UNLOCK();

    return 0;
}
