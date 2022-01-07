
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rdma_resize_cnq_in_params {int cnq_id; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 int ECORE_MSG_RDMA ;
 int ECORE_NOTIMPL ;

enum _ecore_status_t ecore_rdma_resize_cnq(void *rdma_cxt,
    struct ecore_rdma_resize_cnq_in_params *params)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "cnq_id = %08x\n", params->cnq_id);


 return ECORE_NOTIMPL;
}
