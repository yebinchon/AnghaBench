
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_rdma_device {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {struct ecore_rdma_device* dev; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 int ECORE_MSG_RDMA ;

struct ecore_rdma_device *ecore_rdma_query_device(void *rdma_cxt)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Query device\n");


 return p_hwfn->p_rdma_info->dev;
}
