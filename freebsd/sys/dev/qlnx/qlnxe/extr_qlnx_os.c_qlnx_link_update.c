
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ecore_hwfn {scalar_t__ p_dev; } ;
struct TYPE_7__ {int link_up; } ;
struct TYPE_6__ {int link_up; scalar_t__ sriov_initialized; int ifp; TYPE_5__ if_link; } ;
typedef TYPE_1__ qlnx_host_t ;


 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int if_link_state_change (int ,int ) ;
 int qlnx_fill_link (TYPE_1__*,void*,TYPE_5__*) ;
 int qlnx_inform_vf_link_state (void*,TYPE_1__*) ;
 scalar_t__ qlnx_vf_device (TYPE_1__*) ;

void
qlnx_link_update(void *p_hwfn)
{
 qlnx_host_t *ha;
 int prev_link_state;

 ha = (qlnx_host_t *)((struct ecore_hwfn *)p_hwfn)->p_dev;

 qlnx_fill_link(ha, p_hwfn, &ha->if_link);

 prev_link_state = ha->link_up;
 ha->link_up = ha->if_link.link_up;

        if (prev_link_state != ha->link_up) {
                if (ha->link_up) {
                        if_link_state_change(ha->ifp, LINK_STATE_UP);
                } else {
                        if_link_state_change(ha->ifp, LINK_STATE_DOWN);
                }
        }
        return;
}
