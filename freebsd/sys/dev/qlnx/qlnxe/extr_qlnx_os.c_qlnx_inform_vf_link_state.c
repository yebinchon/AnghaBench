
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ecore_mcp_link_state {int link_up; int speed; } ;
struct ecore_mcp_link_params {int link_up; int speed; } ;
struct ecore_mcp_link_capabilities {int link_up; int speed; } ;
struct ecore_hwfn {TYPE_2__* p_dev; int pf_iov_info; } ;
struct TYPE_8__ {scalar_t__ link_up; } ;
typedef TYPE_3__ qlnx_host_t ;
typedef int params ;
typedef int link ;
typedef int caps ;
struct TYPE_7__ {int num_hwfns; TYPE_1__* p_iov_info; } ;
struct TYPE_6__ {int total_vfs; } ;


 int QL_DPRINT2 (TYPE_3__*,char*,...) ;
 int ecore_iov_set_link (struct ecore_hwfn*,int,struct ecore_mcp_link_state*,struct ecore_mcp_link_state*,struct ecore_mcp_link_state*) ;
 int ecore_mcp_get_link_capabilities (struct ecore_hwfn*) ;
 int ecore_mcp_get_link_params (struct ecore_hwfn*) ;
 int ecore_mcp_get_link_state (struct ecore_hwfn*) ;
 int memcpy (struct ecore_mcp_link_state*,int ,int) ;
 int memset (struct ecore_mcp_link_state*,int ,int) ;
 int qlnx_vf_bulleting_update (struct ecore_hwfn*) ;

__attribute__((used)) static void
qlnx_inform_vf_link_state(struct ecore_hwfn *p_hwfn, qlnx_host_t *ha)
{
 struct ecore_mcp_link_capabilities caps;
 struct ecore_mcp_link_params params;
 struct ecore_mcp_link_state link;
 int i;

 if (!p_hwfn->pf_iov_info)
  return;

 memset(&params, 0, sizeof(struct ecore_mcp_link_params));
 memset(&link, 0, sizeof(struct ecore_mcp_link_state));
 memset(&caps, 0, sizeof(struct ecore_mcp_link_capabilities));

 memcpy(&caps, ecore_mcp_get_link_capabilities(p_hwfn), sizeof(caps));
        memcpy(&link, ecore_mcp_get_link_state(p_hwfn), sizeof(link));
        memcpy(&params, ecore_mcp_get_link_params(p_hwfn), sizeof(params));

 QL_DPRINT2(ha, "called\n");


        for (i = 0; i < p_hwfn->p_dev->p_iov_info->total_vfs; i++) {



                link.link_up = 0;

                if (ha->link_up) {
                        link.link_up = 1;




                        link.speed = (p_hwfn->p_dev->num_hwfns > 1) ?
      100000 : link.speed;
  }
  QL_DPRINT2(ha, "link [%d] = %d\n", i, link.link_up);
                ecore_iov_set_link(p_hwfn, i, &params, &link, &caps);
        }

 qlnx_vf_bulleting_update(p_hwfn);

 return;
}
