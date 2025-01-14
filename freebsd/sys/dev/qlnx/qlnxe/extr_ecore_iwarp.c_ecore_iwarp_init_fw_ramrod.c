
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int max_fin_rt; } ;
struct TYPE_6__ {scalar_t__ ll2_ooo_q_index; } ;
struct iwarp_init_func_ramrod_data {TYPE_5__ tcp; TYPE_1__ iwarp; } ;
struct TYPE_7__ {scalar_t__* resc_start; } ;
struct ecore_hwfn {TYPE_4__* p_rdma_info; TYPE_2__ hw_info; } ;
struct TYPE_8__ {scalar_t__ ll2_ooo_handle; } ;
struct TYPE_9__ {TYPE_3__ iwarp; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__) ;
 int ECORE_IWARP_MAX_FIN_RT_DEFAULT ;
 size_t ECORE_LL2_QUEUE ;
 int ECORE_MSG_RDMA ;

void
ecore_iwarp_init_fw_ramrod(struct ecore_hwfn *p_hwfn,
      struct iwarp_init_func_ramrod_data *p_ramrod)
{
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
     "ooo handle = %d\n",
     p_hwfn->p_rdma_info->iwarp.ll2_ooo_handle);

 p_ramrod->iwarp.ll2_ooo_q_index =
  p_hwfn->hw_info.resc_start[ECORE_LL2_QUEUE] +
  p_hwfn->p_rdma_info->iwarp.ll2_ooo_handle;

 p_ramrod->tcp.max_fin_rt = ECORE_IWARP_MAX_FIN_RT_DEFAULT;
 return;
}
