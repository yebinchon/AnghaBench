
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {size_t num_vports; TYPE_1__* wfq_data; } ;
struct ecore_hwfn {TYPE_2__ qm_info; } ;
struct TYPE_3__ {int min_speed; int configured; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_SUCCESS ;
 int ecore_configure_wfq_for_all_vports (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_disable_wfq_for_all_vports (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_init_wfq_param (struct ecore_hwfn*,size_t,int ,int ) ;

__attribute__((used)) static int __ecore_configure_vp_wfq_on_link_change(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         u32 min_pf_rate)
{
 bool use_wfq = 0;
 int rc = ECORE_SUCCESS;
 u16 i;


 for (i = 0; i < p_hwfn->qm_info.num_vports; i++) {
  u32 rate;

  if (!p_hwfn->qm_info.wfq_data[i].configured)
   continue;

  rate = p_hwfn->qm_info.wfq_data[i].min_speed;
  use_wfq = 1;

  rc = ecore_init_wfq_param(p_hwfn, i, rate, min_pf_rate);
  if (rc != ECORE_SUCCESS) {
   DP_NOTICE(p_hwfn, 0,
      "WFQ validation failed while configuring min rate\n");
   break;
  }
 }

 if (rc == ECORE_SUCCESS && use_wfq)
  ecore_configure_wfq_for_all_vports(p_hwfn, p_ptt, min_pf_rate);
 else
  ecore_disable_wfq_for_all_vports(p_hwfn, p_ptt);

 return rc;
}
