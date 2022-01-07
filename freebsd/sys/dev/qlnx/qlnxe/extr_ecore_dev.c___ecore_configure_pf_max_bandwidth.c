
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_link_state {int line_speed; int speed; } ;
struct TYPE_5__ {int pf_rl; } ;
struct ecore_hwfn {TYPE_2__ qm_info; int rel_pf_id; TYPE_1__* mcp_info; } ;
struct TYPE_6__ {int bandwidth_max; } ;
struct TYPE_4__ {TYPE_3__ func_info; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_MSG_LINK ;
 int ECORE_SUCCESS ;
 int ecore_init_pf_rl (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

int __ecore_configure_pf_max_bandwidth(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           struct ecore_mcp_link_state *p_link,
           u8 max_bw)
{
 int rc = ECORE_SUCCESS;

 p_hwfn->mcp_info->func_info.bandwidth_max = max_bw;

 if (!p_link->line_speed && (max_bw != 100))
  return rc;

 p_link->speed = (p_link->line_speed * max_bw) / 100;
 p_hwfn->qm_info.pf_rl = p_link->speed;





 if (max_bw == 100)
  p_hwfn->qm_info.pf_rl = 100000;

 rc = ecore_init_pf_rl(p_hwfn, p_ptt, p_hwfn->rel_pf_id,
         p_hwfn->qm_info.pf_rl);

 DP_VERBOSE(p_hwfn, ECORE_MSG_LINK,
     "Configured MAX bandwidth to be %08x Mb/sec\n",
     p_link->speed);

 return rc;
}
